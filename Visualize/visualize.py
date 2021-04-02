"""
    File name:    visualize.py
    Author:     Jakub Sencak
    Email:         xsenca00@stud.fit.vutbr.cz
    Date created:         2020/10/5
    Date last modified: 2021/4/2
    Python Version:     3.9

Python script for data visualization from SpyPen project.
It collects data from Nucleo board using UART connection over USB

God help me.
"""

# import sys
import argparse
import re
import serial
import serial.tools.list_ports

USB_PORT_DEFAULT = '/dev/ttyACM0'
USB_PORT_SPEED = 115200

DEBUG = True
SCRIPT_FAIL = 1
SCRIPT_SUCCESS = 0

def print_debug(msg):
    """ debug printing"""
    if DEBUG:
        print(msg)  

def main():
    """ In the beginning there was main """
    args = get_args()

    usb_port = check_port(args)
    if usb_port is None:
        print("Could not find suitable COM PORT...")
        return SCRIPT_FAIL  # no suitable port found

    try:
         with serial.Serial(usb_port, USB_PORT_SPEED) as ser:
            if ser.is_open:
                print("Serial connection is open.")
            else:
                raise serial.serialutil.SerialException
            # line = ser.readline()   # read a '\n' terminated line
            # print(line)
   
    except serial.serialutil.SerialException as e:
        print(e)
        print("Wait a bit and try again.")
        return SCRIPT_FAIL
    except serial.SerialTimeoutException as e:
        print(e)
        print("Serial timeout exceeded")
        return SCRIPT_FAIL
    return SCRIPT_SUCCESS

#### Init -----------------------------------------------------------------
### Serial

def check_port(args):
    """ Checks if the default port is connected and uses it,
    if not it will choose one containing 'USB' """
    port = None
    ports = serial.tools.list_ports.comports()
    port_names = [p.device for p in ports]

    if args.port is not None:
        if args.port in port_names:
            port = args.port
        else:
            return None  # no comport found
    elif USB_PORT_DEFAULT in port_names:
        port = USB_PORT_DEFAULT
    else:
        for i in port_names:
            match = re.match(r'.+(USB).+', i)
            if match:
                port = i  #set USB port to the first containing "USB"
                break
        if port is None:
            return None  # no comport found

    print(f"USB port: {port}")
    return port

### arguments
def get_args():
    """ Set up for argument parser """
    arg_parser = argparse.ArgumentParser()
    add_arguments(arg_parser)
    arguments = arg_parser.parse_args()
    print_debug(arguments)
    return arguments

def add_arguments(parser):
    """ initializes argument parser with all options """
    parser.add_argument("-o", "--only",
                        help="Only is folowed by 'acc, gyro, mag, pre' options",
                        choices=["acc", "gyro", "mag", "pre"],
                        action="store")

    parser.add_argument("--pressure",
                        help="Number of pressure sensors",
                        type=int,
                        choices=[0, 1, 2, 3, 4, 5],
                        action="store")

    parser.add_argument("-p", "--port",
                        help="Select port you want to use. "
                        "You can list them by running this command: "
                        "python -m serial.tools.list_ports",
                        action="store")
    # parser.add_argument("-", "--", help="", choices=[], action="")

#### Init end ----------------------------------------------

if __name__ == '__main__':
    main()

# That's all, thnak you for your attention

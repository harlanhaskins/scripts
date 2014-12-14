#!/usr/bin/env  python
#!/usr/bin/env python3
import argparse

def selfify(string, dot_syntax=False):
    if dot_syntax:
        return string + ".self"
    else:
        return "[" + string + " self]"

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-d", "--dot-syntax",
                        help="Print using dot syntax.",
                        action="store_true")
    parser.add_argument("number", help="How many times to repeat the call.",
                        type=int)
    parser.add_argument("-s", "--string",
                        help="A string to use instead of 'self' for the " +
                             "initial object")
    args = parser.parse_args()
    string = args.string or "self"
    for x in range(args.number):
        string = selfify(string, dot_syntax=args.dot_syntax)

    print(string)
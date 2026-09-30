def calculate(a, op, b):
    if op == "+":
        return a + b
    if op == "-":
        return a - b
    if op == "*":
        return a * b
    if op == "/":
        if b == 0:
            return "Error: cannot divide by zero"
        return a / b
    return "Error: unknown operator"

while True:
    try:
        a = float(input("First number: "))
        op = input("Operator (+, -, *, /): ").strip()
        b = float(input("Second number: "))
    except ValueError:
        print("Please enter valid numbers.")
        continue

    print("Result:", calculate(a, op, b))

    if input("Another calculation? (y/n): ").lower() != "y":
        break

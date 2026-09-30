"""Make a calculator for dumdums who don't know they have an in-built calculator app.

Make sure to follow the instructions to open a valid PR.""" 

while True:
    print("\n--- Simple Calculator ---")
    
    num1=int(input("number 1"))
    num2=int(input("number 2"))

    op = input("Enter operator (+, -, *, /) or 'q' to quit: ")
    
    if op.lower() == 'q':
        print("Goodbye!")
        break
        
    
   
    if op == '+':
        print(f"Result: {num1 + num2}")
    elif op == '-':
        print(f"Result: {num1 - num2}")
    elif op == '*':
        print(f"Result: {num1 * num2}")
    elif op == '/':
        if num2 != 0:
            print(f"Result: {num1 / num2}")
        else:
            print("Error: Cannot divide by zero!")
    else:
        print("Invalid operator!")

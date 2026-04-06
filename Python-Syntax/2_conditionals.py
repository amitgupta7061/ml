# Conditionals

temperature = 25

if temperature > 30:
    print("It's a hot day.")
elif temperature > 20:
    print("It's a nice day.")
else:
    print("It's a cold day.")

# Ternary operator
is_raining = False
status = "stay inside" if is_raining else "go out"
print(f"I will {status}.")

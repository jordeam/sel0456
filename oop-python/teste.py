c = 2
d = 4


def g(x, *a):
    print(f'x={x}')
    print(f"length of args={len(a)}")
    for i in a:
        print(f'i={i}')


def concatenate(**kwargs):
    result = ""
    # Iterating over the Python kwargs dictionary
    for arg in kwargs.values():
        result += arg
    for k in kwargs.keys():
        print(f'key={k}')
    return result


print(concatenate(a="Real", b="Python", c="Is", d="Great", e="!", f="!!!"))


def f(a, b, v=3, z=4):
    global d
    c = a + b + d + v + z
    d += 1
    return c


print(f"d={d}")

print(f(2, 3, z=2))

print(f"f={f(2, 4)}")

g(1, 2, 3, 4)

g(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

g(1, "abc", 2.3, 4)

class new_range:
    m: int  # minum value
    M: int  # maximun value
    val: int  # actual value

    def __init__(self, min_val, max_val):
        self.m = min_val
        self.M = max_val
        self.val = min_val

    def inc(self, amount=1):
        """Increments self by amount."""
        self.val += amount
        if self.val >= self.M:
            self.val = self.M - 1

    def get(self):
        return self.val

    def __add__(self, v):
        x = self.val
        x += v
        if x >= self.M:
            x = self.M - 1
        if x < self.m:
            x = self.m
        return x

    def __iadd__(self, v):
        self.val += v
        if self.val >= self.M:
            self.val = self.M - 1
        if self.val < self.m:
            self.val = self.m
        return self

    def __repr__(self):
        return f'new_range: {self.val} [{self.m}, {self.M}['

class new_range:
    def __init__(self, min, max):
        self.min = min
        self.max = max
        self.val = min

    def inc(self, amount=1):
        """Increments self by amount."""
        self.val += amount
        if self.val >= self.max:
            self.val = self.max - 1

    def __repr__(self):
        return f'new_range: {self.val} [{self.min}, {self.max}['


r = new_range(0, 10)

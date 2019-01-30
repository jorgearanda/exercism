class Clock(object):
    """A simple Clock that handles time without regard to date."""

    def __init__(self, hour, minute):
        self.hour = hour
        self.minute = minute
        self._roll_over()

    def __repr__(self):
        return f"{self.hour:02}:{self.minute:02}"

    def __eq__(self, other):
        return self.hour == other.hour and self.minute == other.minute

    def __add__(self, minutes):
        self.minute += minutes
        self._roll_over()
        return self

    def __sub__(self, minutes):
        return self.__add__(-minutes)

    def _roll_over(self):
        self.hour += self.minute // 60
        self.hour = self.hour % 24
        self.minute = self.minute % 60

class Luhn(object):
    def __init__(self, input_str):
        self.input = input_str.replace(" ", "")

    def is_valid(self):
        """Determine whether a string of digits is valid per the Luhn formula."""
        return (
            self._is_long_enough()
            and self._is_all_digits()
            and self._is_valid_checksum()
        )

    def _is_long_enough(self):
        return 1 < len(self.input)

    def _is_all_digits(self):
        return self.input.isdigit()

    def _is_valid_checksum(self):
        checksum = 0
        for position, digit in enumerate(self.input[::-1]):
            checksum += self._get_increment(digit, position)

        return checksum % 10 == 0

    def _get_increment(self, digit, position):
        increment = int(digit)
        increment += int(digit) if position % 2 == 1 else 0
        increment -= 9 if increment > 9 else 0

        return increment

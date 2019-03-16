# Clean up phone number strings using North American conventions.
class PhoneNumber
  def self.clean(input)
    return unless looks_like_international(input) || looks_like_national(input)

    validated_number(remove_country_code(digits_from(input)))
  end

  def self.looks_like_international(input)
    digits_from(input).size == 11 && digits_from(input).start_with?('1')
  end

  def self.looks_like_national(input)
    digits_from(input).size == 10
  end

  def self.digits_from(input)
    input.scan(/\d/).join('')
  end

  def self.validated_number(digits)
    digits.scan(/[2-9]\d{2}[2-9]\d{6}/)[0]
  end

  def self.remove_country_code(digits)
    digits.slice(-10, 10)
  end
end

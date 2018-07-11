# The code snippet below complies to the dependency inversion principle,
# implementation of low-level details is separated to other classes

class PrintResult
  def initialize(data)
    @data = data
  end

  def print(formatter: DocxFormatter.new)
    formatter.format(@data)
  end
end

class DocxFormatter
  def format(data)
    # format data to docx logic
  end
end

class XmlFormatter
  def format(data)
    # format data to xml logic
  end
end

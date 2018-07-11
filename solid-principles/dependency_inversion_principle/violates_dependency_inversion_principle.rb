# The code snippet below represents violation of the dependency inversion principle.
# PrintResult class depends on DocxFormatter and XmlFormatter instead of abstractions.
# DocxFormatter and XmlFormatter may contain the logic that refers to other classes and
# this may cause us to refactor all the related classes when modifying PrintResult class.

class PrintResult
  def initialize(data)
    @data = data
  end

  def print_docx
    DocxFormatter.new(@data)
  end

  def print_xml
    XmlFormatter.new(@data)
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

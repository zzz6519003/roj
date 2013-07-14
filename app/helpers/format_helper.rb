module FormatHelper
  def id_format(id)
    format("%04d" % id)
  end

  def null_string_replace(str)
    str = "----" if str.blank?
  end
end

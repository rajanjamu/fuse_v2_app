module ApplicationHelper

  def flash_container(flash)
    flash.collect{|msg_type, msg| flash_tag(msg_type, msg)}.reduce(:+)
  end

  def flash_tag(msg_type, msg)

    case msg_type
    when "alert"
      msg_type = "warning"
    when "notice"
      msg_type = "success"
    end

    content_tag(:div, msg, class: "alert alert-#{msg_type}")
  end

end

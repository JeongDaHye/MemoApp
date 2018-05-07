module ApplicationHelper
    def bootstrap_msg(aaa)
        result = case aaa
                 when 'notice' then 'success'
                 when 'alert' then 'warning'
                 when 'danger' then 'danger'
                 else 'info'
                 end
        return result
    end
end

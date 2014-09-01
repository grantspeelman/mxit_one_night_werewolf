# Helper methods defined here can be accessed in any controller or view in the application

module MxitOneNightWerewolf
  class App
    module ApplicationHelper
      def smart_link_to(name,path,options = {})
        link_name, other = name.to_s.split(/\s/,2)
        link_to(link_name,path,options) + " #{other}"
      end
    end

    helpers ApplicationHelper
  end
end

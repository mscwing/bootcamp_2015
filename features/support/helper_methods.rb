module HelperMethods
  module Methods


    #browser launch method
    def browser_launch (chosen_browser)
      if chosen_browser.nil?
        ENV['browser'] ||= 'internet_explorer'
      else
        ENV['browser'] = chosen_browser
      end
      Watir::Browser.new transformation(ENV['browser'])
    end

    #modifying user input to browser symbols
    def transformation (chosen_browser)
      case chosen_browser.downcase
        when 'internet explorer', 'ie', 'internet_explorer'
          :internet_explorer
        when 'ff', 'firefox'
          :firefox
        when 'google chrome', 'google_chrome', 'chrome'
          :chrome
        when 'phantom', 'phantomjs'
          :phantomjs
        else
          fail "#{chosen_browser} is not a supported browser."
      end
    end
  end

  # make Methods instance methods in objects that include HelperMethods
  include self::Methods
  # make Methods available directly as HelperMethods.<method>
  self.extend(Methods)
  # make Methods class methods of classes that include HelperMethods
  def self.included(base)
    base.extend(Methods)
  end


end
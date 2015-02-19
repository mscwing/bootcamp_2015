module HelperMethods
  module Methods


    #browser launch method
    def browser_launch (b)
      ENV['browser'] ||= 'firefox'
      Watir::Browser.new transformation(b)
    end

    #modifying user input to browser symbols
    def transformation (chosen_browser)
      case chosen_browser.downcase
        when 'internet explorer', 'ie'
          :internet_explorer
        when 'ff', 'firefox'
          :firefox
        when 'google chrome', 'chrome'
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
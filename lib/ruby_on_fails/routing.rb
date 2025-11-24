module RubyOnFails
  class Application
    def get_controller_and_action(env)
      _, cont, action, after = env["PATH_INFO"].split('/', 4)

      # 2. Transform "quotes" into "Quotes"
      cont = cont.capitalize

      # 3. Transform "Quotes" into "QuotesController"
      cont += "Controller" 

      # 4. Turn the string "QuotesController" into the actual Class object
      #    and return it along with the action name.
      [Object.const_get(cont), action]
    end
  end
end
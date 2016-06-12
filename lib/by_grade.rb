#***still working out the details here!***
class Module
  def create_finder_methods(*attributes)
   attributes.each do |find|
     self.send(:define_singleton_method, "find_by_#{find}") do |params|
       all.each { |lobjective| return lobjective if lobjective.send(find) == params}
       end
     end
   end
 end

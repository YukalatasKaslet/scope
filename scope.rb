$global_var = "This is a global variable"
CONSTANT = 3.1416 

def global_getter
  $global_var
end

def global_setter=(value)
  $global_var = value
end

def constant_getter
  CONSTANT
end

# def constant_setter=(value)
#   CONSTANT = value
# end


class DummyClass

  @@class_variable = "This is my class variable"

  def initialize
    @instance_var = "this is my local var"
  end

  def instance_var #getter
    @instance_var
  end

  def instance_var=(value) #setter
    @instance_var = value
  end

  def class_variable #getter
    @@class_variable
  end

  def class_variable=(value) #setter
    @@class_variable = value
  end

  def global_getter
    $global_var
  end

  def global_setter=(value)
    $global_var = value
  end

  def constant_getter
    CONSTANT
  end

  # def constant_setter=(value)
  #   CONSTANT = value
  # end

end

dummy1 = DummyClass.new
#No se puede reescribir el valor de una constante.

p dummy1.global_setter = 5
p dummy1.global_getter
# p dummy1.constant_setter = 23456
p dummy1.constant_getter
p global_getter
p global_setter = 15
p global_getter
p dummy1.global_setter = 13
p global_getter
p constant_getter
# p constant_setter = 3
# p constant_getter


# dummy2 = DummyClass.new

# p dummy1.class_variable
# p dummy2.class_variable
# p dummy1.class_variable = "New value for the class variable"
# p dummy1.class_variable #=>"New value for the class variable"
# p dummy2.class_variable #=>"New value for the class variable"

=begin

local_var = "this is my local var"


def return_my_local_var
  local_var
end

puts return_my_local_var


Resultado:
  scope.rb:6:in `return_my_local_var': 
  undefined local variable or method `local_var' for main:
  Object (NameError)
  from scope.rb:9:in `<main>'

Explicación:
  "local_var" es una variable perteneciente al global_scope
  No está definida dentro de algún método y tampoco está
  definida como una variable global.
  Por tal motivo el "local_var" dentro del método 
  "return_my_local_var" no es el mismo y al no estar declarado
  con algún tipo de dato y tampoco encontarse como método es "desconocido".

  ******************************************************

class DummyClass

  def initialize
    @instance_var = "this is my local var"
  end

  def return_my_local_var
    @instance_var
  end

end

  dummy = DummyClass.new

  p dummy.return_my_local_var

Explicación: al usar '@' antes del nombre de la variable indicamos 
  que es una variable de instancia, por lo que cualquier método
  dentro de la misma clase puede acceder a dicha variable.
=end
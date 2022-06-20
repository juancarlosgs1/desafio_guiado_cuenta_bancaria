class CuentaBancaria
    attr_accessor :nombre_usuario, :vip
    def initialize(nombre_usuario,numero_de_cuenta,vip = 0)

        if nombre_usuario.class != String || numero_de_cuenta.class != String
            raise ArgumentError "ambos parametros deben ser String"
        end

        raise ArgumentError, "El atributo vip debe pertenecer a la clase Integer" if vip.class != Integer
        raise ArgumentError, "El atributo vip debe ser 1 o 0" if vip > 1 || vip < 0


        raise RangeError, "numero de cuenta debe ser igual a 8 no #{numero_de_cuenta.length}" if numero_de_cuenta.length != 8 
        @nombre_usuario = nombre_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end

    def numero_de_cuenta
       "#{@vip.to_s} - #{@numero_de_cuenta}"
    end
end
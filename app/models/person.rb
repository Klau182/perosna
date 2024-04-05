class Person < ApplicationRecord
    validates :name, presence: { message: "debe ser proporcionado por favor" }
    validates :birthdate, presence: true
    validates :gender, presence: true
    validates :country, presence: true
    validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "solo se permiten letras" }
    validates :country, format: { with: /\A[a-zA-Z]+\z/,
    message: "solo se permiten letras" }

    enum :gender, { mujer: 0, hombre: 1, "no definido": 2 }   
end
 
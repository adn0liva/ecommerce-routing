class Article
  include ActiveModel::Model
  VINYLS = [
    { id: 1, name: 'ABBA | Hova’s Vittne (1981)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 2, name: 'Bob Dylan | The Freewheelin’ Bob Dylan (1963)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 3, name: 'Bruce Springsteen | Spirit in the Night (1973)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 4, name: 'Cherry Five | Cherry Five (1975)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 5, name: 'David Bowie | The Prettiest Star (1973)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 6, name: 'Elton John | I’ve Been Loving You (1968)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 7, name: 'Elvis Presley | Speedway (1968)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 8, name: 'Elvis Presley | That’s All Right (1954)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 9, name: 'Hank Mobley | Blue Note 1568 (1957)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 10, name: 'Led Zeppelin | Led Zeppelin (1969)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 11, name: 'Misfits | Legacy of Brutality (1985)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 12, name: 'Nirvana | Bleach (1989)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 13, name: 'Prince | The Black Album', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 14, name: 'Sex Pistols | God Save the Queen (1977)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 15, name: 'The Beatles | Abbey Road (1969)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 16, name: 'The Beatles | Please Please Me (1963)', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 17, name: 'The White Stripes | Lafayette Blues (1998)', loads: [{load: 1},{load: 2},{load: 3}] }
  ]
  LIQUERS = [
    { id: 18, name: 'Pack 24 Cervezas Corona Extra Botella 330ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 19, name: 'Cooler Budweiser', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 20, name: 'Calendario Cervecero: Desafío Sommelier', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 21, name: 'Pack de 12 Cervezas Hawaianas', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 22, name: 'Pack Degustación de 12 Cervezas Europeas', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 23, name: 'Pack Degustación Jamoneras', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 24, name: 'Pack Degustación de 12 Cervezas Americanas', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 25, name: 'Pack 24 Cervezas Stella Artois Lata 473ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 26, name: 'Pack 24 Cervezas Pilsen del Sur Lata 473ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 27, name: 'Pack 24 Cervezas Goose Island Golden Lager Lata 440ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 28, name: 'Pack 18 Cervezas 10 Barrel Pub Beer Lata 355ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 29, name: 'Pack 24 Cervezas KM 24.7 Amber 473ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 30, name: 'Pack 24 Cervezas Quilmes Lata 473ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 31, name: 'Pack 24 Cervezas Becks Blue Botella Pale Sin Alcohol 330ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 32, name: 'Pack 24 Cervezas Hoegaarden White 330ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 33, name: 'Pack 12 Cervezas Del Puerto IPA Botella 330ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 34, name: 'Pack 24 Cervezas Stella Artois 0.0 botella 330ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 35, name: 'Pack 24 Cervezas Blue Point Toasted Lager Botella 355ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 36, name: 'Pack 24 Cervezas Goose Island IPA 355ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 37, name: 'Pack 12 Cervezas Cusqueña Dorada Lata 354ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 38, name: 'Pack 24 Cervezas Km 24.7 Bohemian Pilsener Botella 355ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 39, name: 'Pack 24 Cervezas Becker Roja Lata 473ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 40, name: 'Pack 24 Cervezas Becker Negra Lata 473ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 41, name: 'Pack 12 Cervezas Mossto Tiempos Mejores Botella 330ml', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 42, name: 'Pack 6 Vasos Hoegaarden 330cc', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 43, name: 'Pack 6 Vasos Goose Island Nonic 500cc', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 44, name: 'Pack 6 Vasos Franziskaner 500cc', loads: [{load: 1},{load: 2},{load: 3}] }
  ]
  PETS = [
    { id: 45, name: 'Alimento perro cachorro raza mediana/grande 15 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 46, name: 'Alimento perro raza mediana y grande 8 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 47, name: 'Alimento perro edad madura 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 48, name: 'Alimento perro adulto carne y verduras 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 49, name: 'Alimento gato adulto pescado 8 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 50, name: 'Snack dental perro adulto mediano 119 g', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 51, name: 'Snack dental perro adulto pequeño 42 g', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 52, name: 'Alimento seco perro cachorro 15 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 53, name: 'Alimento seco gato adulto pescado 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 54, name: 'Alimento seco gato adulto carne 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 55, name: 'Alimento seco perro cachorro raza pequeña y mediana pollo 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 56, name: 'Alimento seco perro cachorro raza grande pollo 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 57, name: 'Alimento seco perro adulto raza pequeña y mediana pollo 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 58, name: 'Alimento seco perro adulto raza pequeña y mediana pollo 15 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 59, name: 'Alimento seco perro adulto raza grande pollo 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 60, name: 'Alimento seco perro adulto raza grande pollo 15 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 61, name: 'Alimento seco gatito pollo 1 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 62, name: 'Alimento seco gatito pollo 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 63, name: 'Alimento seco gato adulto pollo 1 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 64, name: 'Alimento seco gato adulto pollo 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 65, name: 'Alimento seco light gato adulto pollo 1 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 66, name: 'Alimento seco light gato adulto pollo 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 67, name: 'Alimento perro adulto carne y cereal 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 68, name: 'Alimento perro cachorro carne, pollo y leche 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 69, name: 'Alimento perro cachorro razas pequeñas 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 70, name: 'Alimento perro adulto razas pequeñas 8 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 71, name: 'Alimento perro adulto carne y cereal 9 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 72, name: 'Alimento gato gourmet pollo verduras 80 g', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 73, name: 'Alimento gato gourmet pavo 80 g', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 74, name: 'Alimento gato filetitos de pavo 80 g', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 75, name: 'Alimento gato filetitos de pollo 80 g', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 76, name: 'Arena sanitaria Ecoplus 3.6 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 77, name: 'Alimento perro carne, pollo y cereales 15 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 78, name: 'Alimento perro raza pequeña 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 79, name: 'Alimento gato adulto carne 1 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 80, name: 'Alimento gato adulto salmón 1 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 81, name: 'Alimento gatito carne y leche 1 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 82, name: 'Snack dental perro adulto grande 196 g', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 83, name: 'Alimento perro adulto razas pequeñas 3 kg', loads: [{load: 1},{load: 2},{load: 3}] },
    { id: 84, name: 'Alimento para perro Cannes carne y vegetales 15 kg', loads: [{load: 1},{load: 2},{load: 3}] }
  ]

  def all
    [
      {
        id: 1,
        name: 'Articulo 1',
        load1: 11
      },
      {
        id: 2,
        name: 'Articulo 2',
        load1: 12
      },
      {
        id: 3,
        name: 'Articulo 3',
        load1: 13
      }
    ]
  end

  def self.all
    PETS
  end

  def self.get_product(product_id)
    Article.all.each do |article|
      if product_id == "#{article[:id]}"
        return article
      end
    end
    return nil
  end
    
end

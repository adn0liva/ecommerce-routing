class Article
  include ActiveModel::Model

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
    [
      {
        id: 1,
        name: 'ABBA | Hova’s Vittne (1981)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 2,
        name: 'Bob Dylan | The Freewheelin’ Bob Dylan (1963)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 3,
        name: 'Bruce Springsteen | Spirit in the Night (1973)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 4,
        name: 'Cherry Five | Cherry Five (1975)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 5,
        name: 'David Bowie | The Prettiest Star (1973)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 6,
        name: 'Elton John | I’ve Been Loving You (1968)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 7,
        name: 'Elvis Presley | Speedway (1968)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 8,
        name: 'Elvis Presley | That’s All Right (1954)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 9,
        name: 'Hank Mobley | Blue Note 1568 (1957)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 10,
        name: 'Led Zeppelin | Led Zeppelin (1969)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 11,
        name: 'Misfits | Legacy of Brutality (1985)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 12,
        name: 'Nirvana | Bleach (1989)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 13,
        name: 'Prince | The Black Album',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 14,
        name: 'Sex Pistols | God Save the Queen (1977)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 15,
        name: 'The Beatles | Abbey Road (1969)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 16,
        name: 'The Beatles | Please Please Me (1963)',
        loads: { load0: 1, load1: 2, load2: 3 }
      },
      {
        id: 17,
        name: 'The White Stripes | Lafayette Blues (1998)',
        loads: { load0: 1, load1: 2, load2: 3 }
      }
    ]
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

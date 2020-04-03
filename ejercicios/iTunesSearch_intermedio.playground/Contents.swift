//: Playground no es asincrono por defecto

import UIKit

//1.Playground Asincrono

import PlaygroundSupport                //Biblioteca que permite hacer asincrono


PlaygroundPage.current.needsIndefiniteExecution = true




//2.Codeable                            //Hacer nuestra url

let urlBase = URL(string: "https://itunes.apple.com/search?")!              //Abre el opcional y da la url

//Estructura de datos

struct Item:Codable{
    
    var artistName:String
    var artworkUrl100:String
    var trackName:String
    
    //Enumeracion de llaves
    enum Llaves:String, CodingKey{
        case artistName
        case artworkUrl100
        case trackName
    }
    
    //Por codable permite crear la estructura
    init(from decode: Decoder) throws {
        let contenedor = try decode.container(keyedBy: Llaves.self)
        
        //Extrayendo los valores y agregandoselos a un elemento
        self.artistName = try contenedor.decode(String.self, forKey: Item.Llaves.artistName)
        self.artworkUrl100 = try contenedor.decode(String.self, forKey: Item.Llaves.artworkUrl100)
        self.trackName = try contenedor.decode(String.self, forKey: Item.Llaves.trackName)
    }
}

//Identificador que trae el elemento
struct Items:Codable{
    var results:[Item]
}


//3.Identificar URL de busqueda

//Dos valores url base y
let criterios = ["term":"Beatles", "media":"music", "limit":"10"]           //Diccionario si hay nuevo criterio agregarlo aqui limit solo especifica cuantas traer

func criteriosBusqueda(urlBase: URL, criterios: [String:String]) -> URL?{
    
    var componentes = URLComponents.init(url: urlBase, resolvingAgainstBaseURL: true)   //Permite atraves del constructor
    
    componentes?.queryItems = criterios.compactMap({ (llave, valor) -> URLQueryItem? in
        URLQueryItem(name: llave, value: valor)
        
        
    })
    
    return componentes?.url
}

let itunesURL = criteriosBusqueda(urlBase: urlBase, criterios: criterios)!
print(itunesURL)

//Construccion de la url con todos los elementos que necesito https://itunes.apple.com/search?limit=10&term=Beatles&media=music


//Pedirle al proveedor de servicio la informacion   URLSession
URLSession.shared.dataTask(with: itunesURL) { (data, respuesta, error) in
    
    let decodificador = JSONDecoder()
    
    if let datos = data {
        
        //print(String(bytes: datos, encoding: .utf8)!)
        if let items = try? decodificador.decode(Items.self, from: datos) {
            //items.results[2].artistName
            for item in items.results {
                print(item.trackName)
            }
        }
        
        
    
    }
}.resume()


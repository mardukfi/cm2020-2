//: Playground no es asincrono por defecto

import UIKit

//1.Playground Asincrono

import PlaygroundSupport                //Biblioteca que permite hacer asincrono
PlaygroundPage.current.needsIndefiniteExecution = true

//2.Registrar nuestra url

let urlBase = URL(string: "https://itunes.apple.com/search?limit=10&term=Beatles&media=music")!              //Abre el opcional y da la url con todo y parametros

//Estructuras de datos que recibirán los datos

struct Item:Codable{
    
    var artistName:String
    var artworkUrl100:String
    var trackName:String
    
}

//Identificador que trae el elemento
struct Items:Codable{
    var results:[Item]
}

//3: Pedirle al proveedor de servicio la informacion   URLSession
URLSession.shared.dataTask(with: urlBase) { (data, respuesta, error) in
    
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





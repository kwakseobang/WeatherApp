// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let cod: String
    let message, cnt: Int
    let list: [InfoList]
    let city: String
    let coord: Coord
}

// MARK: - Coord
struct Coord: Codable {
    let lat, lon: Double
}

// MARK: - List
struct InfoList: Codable {
    let dt: Int
    let main: MainClass
    let weather: [Weather]
    let wind: Wind //풍속
    let pop: Double //강수량
    let dtTxt: String //시간

    enum CodingKeys: String, CodingKey {
        case dt, main, weather, wind, pop
        case dtTxt = "dt_txt"
    }
}

// MARK: - MainClass
struct MainClass: Codable {
    let temp, feelsLike, tempMin, tempMax: Double

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
      
    }
}


// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}


// MARK: - Wind
struct Wind: Codable {
    let speed: Double

}

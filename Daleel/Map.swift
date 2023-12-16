//
//  Map.swift
//  Daleel
//
//  Created by Gehad Eid on 16/12/2023.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            TextField("Search", text: $searchText)
                .padding(8)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            Button(action: {
                searchText = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
                    .padding(8)
            }
        }
    }
}

struct MapView: View {
    let locations: [Location] = [
        Location(name: "ابراهيم الخضر", coordinate: CLLocationCoordinate2D(latitude: 21.421882685441684, longitude: 39.824731292141536)),
        Location(name: "مها القحطاني", coordinate: CLLocationCoordinate2D(latitude: 21.421058702061025, longitude: 39.825954379405665)),
        Location(name: "مازن العتيبي", coordinate: CLLocationCoordinate2D(latitude: 21.41956645579419, longitude: 39.824770559132034)),
        Location(name: "البندري العتيبي", coordinate: CLLocationCoordinate2D(latitude: 21.422699140967946, longitude: 39.8211798677774)),
        Location(name: "منار العنزي", coordinate: CLLocationCoordinate2D(latitude: 21.423609140967946, longitude: 39.8231798677774)),
        Location(name: "أنت", coordinate: CLLocationCoordinate2D(latitude: 21.423509140967946, longitude: 39.8257798677774)),
        Location(name: "نقطة تجمع", coordinate: CLLocationCoordinate2D(latitude: 21.423999140967946, longitude: 39.8245798677774)),
        Location(name: "سكن", coordinate: CLLocationCoordinate2D(latitude: 21.420509140967946, longitude: 39.8217798677774)),
        Location(name: "نقطة إرشاد", coordinate: CLLocationCoordinate2D(latitude: 21.421999140967946, longitude: 39.8225798677774))
    ]

    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 21.422610, longitude: 39.824168),
        span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007)
    )
    
    @State private var searchText = ""

    var filteredLocations: [Location] {
        if searchText.isEmpty {
            return locations
        } else {
            return locations.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
            VStack {
                SearchBar(searchText: $searchText)
                
                ZStack (alignment: .topTrailing){
                    Map(coordinateRegion: $region, annotationItems: filteredLocations) { location in
                        MapAnnotation(coordinate: location.coordinate) {
                            VStack {
                                switch location.name {
                                    case "أنت":
                                        Image("you")
                                            .resizable()
                                            .frame(width: 30, height: 35)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.red, lineWidth: 0)
                                            )
                                            .shadow(color: .gray, radius: 5, x: 0, y: 17)
                                    case "نقطة تجمع":
                                        Image("gather")
                                            .resizable()
                                            .frame(width: 30, height: 35)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.red, lineWidth: 0)
                                            )
                                            .shadow(color: .gray, radius: 5, x: 0, y: 17)
                                    
                                case "ابراهيم الخضر":
                                    Image("old")
                                        .resizable()
                                        .frame(width: 30, height: 35)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.red, lineWidth: 0)
                                        )
                                        .shadow(color: .gray, radius: 5, x: 0, y: 17)
                                    
                                    case "سكن":
                                        Image("home")
                                            .resizable()
                                            .frame(width: 30, height: 35)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.red, lineWidth: 0)
                                            )
                                            .shadow(color: .gray, radius: 5, x: 0, y: 17)
                                    
                                case "منار العنزي":
                                    Image("baby")
                                        .resizable()
                                        .frame(width: 30, height: 35)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.red, lineWidth: 0)
                                        )
                                        .shadow(color: .gray, radius: 5, x: 0, y: 17)
                                    
                                    
                                case "مازن العتيبي":
                                    Image("young")
                                        .resizable()
                                        .frame(width: 30, height: 35)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.red, lineWidth: 0)
                                        )
                                        .shadow(color: .gray, radius: 5, x: 0, y: 17)
                                    
                                case "البندري العتيبي":
                                    Image("lost")
                                        .resizable()
                                        .frame(width: 30, height: 35)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.red, lineWidth: 0)
                                        )
                                        .shadow(color: .gray, radius: 5, x: 0, y: 17)
                                    
                                case "مها القحطاني":
                                    Image("mapPin")
                                        .resizable()
                                        .frame(width: 30, height: 35)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.red, lineWidth: 0)
                                        )
                                        .shadow(color: .gray, radius: 5, x: 0, y: 17)
                                    
                                    case "نقطة إرشاد":
                                        Image("lead")
                                            .resizable()
                                            .frame(width: 30, height: 35)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.red, lineWidth: 0)
                                            )
                                            .shadow(color: .gray, radius: 5, x: 0, y: 17)
                                    default:
                                        Image("def")
                                            .resizable()
                                            .frame(width: 30, height: 35)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.red, lineWidth: 0)
                                            )
                                            .shadow(color: .gray, radius: 5, x: 0, y: 17)
                                }
                                
                                Text(location.name)
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 8)
                                    .background(Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    Image("legend")// legened
                        .resizable()
                        .frame(width: 90, height: 100)
                        .foregroundColor(.white)
                        .padding(16)
                }
               
            }
        }
    }


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}



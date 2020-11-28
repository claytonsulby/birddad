//
//  ContentView.swift
//  birddad
//
//  Created by Clayton Sulby on 11/25/20.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var audioModel:AudioModel
    let timer = Timer.publish(every: 100, on: .main, in: .common).autoconnect()
    
    @State var opacity:Double = 1.0
    
    var birddad:Image {
        if audioModel.isPlaying == true {
            return Image("squawk")
        } else {
            return Image("idle")
        }
    }
    
    var body: some View {
        NavigationView{
            GeometryReader{ geometry in
                HStack{
                    Spacer()
                    VStack{
                        Spacer()
                        
                        withAnimation {
                            Text("Tap birdie to play sounds!")
                                .opacity(opacity)
                                .onReceive(timer) { _ in
                                    opacity = 1.0
                                }
                        }
                        
                        birddad
                            .resizable()
                            .frame(width: geometry.size.width, height: geometry.size.width, alignment: .center)
                            .onTapGesture {
                                audioModel.play()
                                opacity = 0
                            }
                        HStack{
                            Spacer()
                            NavigationLink("Recordings", destination: RecordingsList())
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 15).opacity(0.2))
                            NavigationLink("Record", destination: RecordView())
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 15).opacity(0.2))
                            Spacer()
                        }
                        Spacer()
                    }
                    Spacer()
                }
                
            }
            .navigationBarHidden(true)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

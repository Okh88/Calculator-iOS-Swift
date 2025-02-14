//
//  ContentView.swift
//  Pia13v2iostor
//
//  Created by Malmö Yrkehögskolan on 2024-11-07.
//

import SwiftUI

struct ContentView: View {
    @State var resultnumber = 0
    @State var inumber = ""
    var body: some View {
        
                VStack {
                    Text("\(resultnumber)")
                        .font(.largeTitle)

                    TextField("Number", text: $inumber)
                        .keyboardType(.decimalPad) // Set keyboard type for better user experience
                    
                    HStack {
                        Button(action: {
                            calcPlus()
                        }) {
                            FancyButtonView(fancytext: "Plus")
                        }
                        
                        Button(action: {
                            calcMinus()
                        }) {
                            FancyButtonView(fancytext: "Minus", fancycolor: Color.cyan)
                        }
                        
                        Button(action: {
                            calcMultiply()
                        }) {
                            FancyButtonView(fancytext: "Multiply")
                        }
                    } // HSTACK END
                    
                    Button(action: {
                        resultnumber = 0
                        inumber = ""
                    }) {
                        FancyButtonView(fancytext: "RESET", fancycolor: Color.black)
                    }
                    .padding(.top, 20.0)

                }
                .padding()
            } // VSTACK END
            
            func calcPlus() {
                if let thenumber = Int(inumber) {
                    resultnumber += thenumber
                }
            }
            
            func calcMinus() {
                if let thenumber = Int(inumber) {
                    resultnumber -= thenumber
                }
            }
            
            func calcMultiply() {
                if let thenumber = Int(inumber) {
                    resultnumber *= thenumber
                }
            }
        }

        #Preview {
            ContentView()
        }

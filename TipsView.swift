//
//  TipsView.swift
//  Trakr
//
//  Created by Andres Bolivar on 12/8/21.
//

import SwiftUI

struct TipsView: View {
    let tip: [Tip]
    init(){
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url);
        tip =  try! JSONDecoder().decode([Tip].self, from: data)
    }
    var body: some View {
        List(tip, id: \.text, children: \.children) { tip in
            if tip.children != nil {
            Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}

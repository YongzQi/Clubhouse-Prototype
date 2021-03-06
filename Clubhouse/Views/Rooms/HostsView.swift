//
//  HostsView.swift
//  Clubhouse
//
//  Created by yz qi on 6/28/21.
//

import SwiftUI

struct HostsView: View {
    
    let people: [Person]
    
    private let hostsColumns = [
        GridItem(.fixed(85), spacing: 25),
        GridItem(.fixed(85), spacing: 25),
        GridItem(.fixed(85), spacing: 25)
    ]
    
    var body: some View {
        
        LazyVGrid(columns: hostsColumns,
                  alignment: .leading,
                  spacing: 10) {
            
            ForEach(people) { person in
                PersonView(person: person)
            }
        }
    }
}

struct HostsView_Previews: PreviewProvider {
    static var previews: some View {
        HostsView(people: FeedRoom.dummyData[0].hosts)
    }
}

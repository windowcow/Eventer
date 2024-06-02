//
//  DayItemListRow.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import SwiftUI

struct DayItemListRow: View {
    var dday: DDay
    var allowedUnits: NSCalendar.Unit
    
    var body: some View {
        CardStyle2(dayItem: dday, allowedUnits: allowedUnits)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(dday.foregroundColor.opacity(0.3), in: .containerRelative)
        .contentShape(.containerRelative)
        .compositingGroup()
        .shadow(color: .gray, radius: 5, x: 0.0, y: 10)
        .aspectRatio(1.6, contentMode: .fit)
    }
}

struct CardStyle1: View {
    var dayItem: DDay
    var allowedUnits: NSCalendar.Unit

    var body: some View {
        HStack {
            Image(systemName: dayItem.iconSystemName)
                .font(.largeTitle)
                .bold()
            VStack(alignment: .leading) {
                Text(dayItem.title)
                    .font(.title)

            }
            Spacer()
            
            VStack(alignment: .trailing) {
                Text(dayItem.getString(allowedUnits: allowedUnits))
                    .font(.title3)
                Text(dayItem.date.toString(.date(.medium)))
                    .font(.caption)
                    .fontWeight(.light)
            }
        }

    }
}

struct CardStyle2: View {
    var dayItem: DDay
    var allowedUnits: NSCalendar.Unit

    var body: some View {
        VStack {
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Text(dayItem.getString(allowedUnits: allowedUnits))
                        .font(.title)
                    Text(dayItem.date.toString(.date(.medium)))
                        .font(.caption)
                        .fontWeight(.light)
                }

            }
            
            Spacer()

            HStack {
                Image(systemName: dayItem.iconSystemName)
                    .font(.largeTitle)
                    .bold()
                VStack(alignment: .leading) {
                    Text(dayItem.title)
                        .font(.headline)

                }
            }
            
        }

    }
}



struct CardStyle3: View {
    var dayItem: DDay
    var allowedUnits: NSCalendar.Unit

    var body: some View {
        HStack {
            Image(systemName: dayItem.iconSystemName)
                .resizable()
                .scaledToFit()
                .bold()
            
            VStack {
                Text(dayItem.title)
                    .font(.headline)
                
                HStack {
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(dayItem.getString(allowedUnits: allowedUnits))
                            .font(.title)
                        Text(dayItem.date.toString(.date(.medium)))
                            .font(.caption)
                            .fontWeight(.light)
                    }

                }

            }
        }
    }
}

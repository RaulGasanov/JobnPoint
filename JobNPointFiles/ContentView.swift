//
//  ContentView.swift
//  JobnPoint
//
//  Created by Raul_Gasanov on 07.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var Search: String = ""
    var body: some View {
        VStack{
            header
            search
            advertisement
            professionsTop
            professionsBottom
            topVacancy
            footer
        }
    }
    
    var header: some View {
        ZStack{
            //Rectangle 28
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.76953125, green: 0.7421875, blue: 0.9375, alpha: 0.20999999344348907)))
                .frame(width: 415, height: 100)
                .padding(.bottom)
            
            HStack(spacing: 48){
                HStack(spacing: 22){
                    Button(action: {}) {
                        Image("settings")
                            .resizable()
                            .frame(width: 20.05, height: 20)
                    }
                    Button(action: {}) {
                        Image("bell")
                            .resizable()
                            .frame(width: 21, height: 20)
                    }
                }
                .padding(10)
                Image("LOGO")
                    .frame(width: 134, height: 23)
                
                Button(action: {}) {
                    //Rectangle 2
                    // Composition groups need to live inside some a stack. (VStack, ZStack, or HStack)
                    ZStack {
                        RoundedRectangle(cornerRadius: 45)
                            .fill(Color(#colorLiteral(red: 0.9974166750907898, green: 0.9958333373069763, blue: 1, alpha: 0.8799999952316284)))
                        
                        RoundedRectangle(cornerRadius: 45)
                            .strokeBorder(Color(#colorLiteral(red: 0.40784314274787903, green: 0.32549020648002625, blue: 0.658823549747467, alpha: 1)), lineWidth: 0.30000001192092896)
                        //Резюме
                        Text("Резюме").font(.custom("Montserrat-Bold", size: 11)).foregroundColor(Color(#colorLiteral(red: 0.31, green: 0.21, blue: 0.58, alpha: 1))).tracking(0.66).rotationEffect(.degrees(180))
                    }
                    .compositingGroup()
                    .frame(width: 79, height: 29.3)
                    .rotationEffect(.degrees(-180))
                    .shadow(color: Color(#colorLiteral(red: 0.3099443316459656, green: 0.21388888359069824, blue: 0.5833333134651184, alpha: 0.49000000953674316)), radius:10, x:0, y:4)
                }
            }
            .padding(.top)
        }
        .padding(.top, -44)
    }
    
    var search: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(#colorLiteral(red: 0.9415151476860046, green: 0.929444432258606, blue: 0.9958333373069763, alpha: 1)))
                    .frame(width: 334, height: 36)
                    .rotationEffect(.degrees(180))
                Image("search")
                    .resizable()
                    .frame(width: 32.26, height: 31.78)
                    .padding(.trailing, 283)
                TextField("Найти работу", text: $Search).font(.custom("Montserrat-Medium", size: 14)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.21)))
                    .padding(.horizontal, 57)
            }
            Button(action: {}) {
                Image("Filter")
                    .resizable()
                    .frame(width: 21.45, height: 22.07)
                    .padding(.trailing, 17)
            }
        }
        .padding(.top, 10)
    }
    var advertisement: some View {
        HStack {
            //Rectangle 55
            Button(action: {}) {
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)), lineWidth: 1)
                    .frame(width: 163.6, height: 150.9)
            }
            VStack(spacing: 5){
                //Rectangle 56
                Button(action: {}) {
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)), lineWidth: 1)
                        .frame(width: 107.7, height: 72.1)
                }
                //Rectangle 57
                Button(action: {}) {
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)), lineWidth: 1)
                        .frame(width: 107.7, height: 73.2)
                }
            }
            //Rectangle 58
            Button(action: {}) {
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)), lineWidth: 1)
                    .frame(width: 89, height: 150)
            }
        }
        .padding(.top, 25)
    }
    
    var professionsTop: some View {
        HStack(spacing: 20) {
            //Rectangle 55
            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                    .fill(LinearGradient(
                            gradient: Gradient(stops: [
                        .init(color: Color(#colorLiteral(red: 0.7941737174987793, green: 0.7208333015441895, blue: 1, alpha: 1)), location: 0.421875),
                        .init(color: Color(#colorLiteral(red: 0.8396685123443604, green: 0.8049652576446533, blue: 0.9958332777023315, alpha: 1)), location: 0.9375)]),
                            startPoint: UnitPoint(x: 0.3095237952199954, y: 1.296874943083201),
                            endPoint: UnitPoint(x: 0.5714285714285715, y: -2.7755575615628914e-17)))
                    //Стажировки
                    Text("Стажировки").font(.custom("Montserrat-SemiBold", size: 11)).foregroundColor(Color.black).multilineTextAlignment(.center)
                }
                .frame(width: 112, height: 43)
            }
            
            //Rectangle 59
            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .strokeBorder(Color(#colorLiteral(red: 0.95686274766922, green: 0.25882354378700256, blue: 0.25882354378700256, alpha: 1)), lineWidth: 0.5)
                        .frame(width: 112, height: 43)
                    //IT
                    Text("IT").font(.custom("Montserrat-SemiBold", size: 11)).foregroundColor(Color.black).multilineTextAlignment(.center)
                }
            }
            
            //Rectangle 60
            Button(action: {}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .strokeBorder(Color(#colorLiteral(red: 0.5333333611488342, green: 0.4117647111415863, blue: 0.8745098114013672, alpha: 1)), lineWidth: 0.5)
                        .frame(width: 112, height: 43)
                    //Экономика
                    Text("Экономика").font(.custom("Montserrat-SemiBold", size: 11)).foregroundColor(Color.black).multilineTextAlignment(.center)
                }
            }
        }
        .padding(.top, 35)
    }
    
    var professionsBottom: some View {
        ZStack {
            HStack(spacing: 30.0){
                //Rectangle 61
                Button(action: {}) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .strokeBorder(Color(#colorLiteral(red: 0.5333333611488342, green: 0.4117647111415863, blue: 0.8745098114013672, alpha: 1)), lineWidth: 0.5)
                            .frame(width: 112, height: 43)
                        //Дизайн
                        Text("Дизайн").font(.custom("Montserrat-SemiBold", size: 11)).foregroundColor(Color.black).multilineTextAlignment(.center)
                    }
                }
                
                //Rectangle 62
                Button(action: {}) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .strokeBorder(Color(#colorLiteral(red: 0.95686274766922, green: 0.25882354378700256, blue: 0.25882354378700256, alpha: 1)), lineWidth: 0.5)
                            .frame(width: 112, height: 43)
                        //Маркетинг
                        Text("Маркетинг").font(.custom("Montserrat-SemiBold", size: 11)).foregroundColor(Color.black).multilineTextAlignment(.center)
                    }
                }
            }
            HStack{
                Button(action: {}) {
                    Image("vector")
                        .resizable()
                        .frame(width: 14, height: 9)
                }
                .padding(.leading, 343) //Также есть вариант с отступами через Spacer() выше и ниже. Обязательно использовать одновременно
                //                Spacer()
            }
        }
        .padding(.top, 10)
    }
    
    var topVacancy: some View {
        VStack {
            //Топ вакансий
            Text("Топ  вакансий ").font(.custom("Montserrat-Bold", size: 16)).multilineTextAlignment(.center)
            //Frame 14
            Button(action: {}) {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
                    .frame(width: 351, height: 46)
                    .padding(12)
            }
            //Frame 15
            Button(action: {}) {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
                    .frame(width: 351, height: 46)
            }
            //Frame 17
            Button(action: {}) {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
                    .frame(width: 351, height: 46)
                    .padding(12)
            }
        }
        .padding(.top, 35)
    }
    
    var footer: some View {
        ZStack{
            //Rectangle 43
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color(#colorLiteral(red: 0.8534090518951416, green: 0.8208333253860474, blue: 1, alpha: 0.6200000047683716)))
                
                RoundedRectangle(cornerRadius: 5)
                    .strokeBorder(Color(#colorLiteral(red: 0.2988749146461487, green: 0.20625001192092896, blue: 0.5625, alpha: 0.9599999785423279)), lineWidth: 1)
            }
            .frame(width: 375.9, height: 65)
            .opacity(0.3)
            
            HStack(alignment: .center, spacing: 85){
                Button(action: {}) {
                    VStack{
                        Image("professions")
                        //Профессии
                        Text("Профессии").font(.custom("Montserrat-Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.81))).tracking(-0.2)
                    }
                }
                Button(action: {}) {
                    VStack{
                        Image("letter")
                        //Отклики
                        Text("Отклики").font(.custom("Montserrat-Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.81))).tracking(-0.2)
                    }
                    .padding(.trailing, 10)
                }
                Button(action: {}) {
                    VStack{
                        Image("personal-page")
                        //Профиль
                        Text("Профиль").font(.custom("Montserrat-Regular", size: 10)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.81))).tracking(-0.2)
                    }
                }
            }
        }
        .padding(.top, 15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

struct FriendDetailView: View {
    
    let profilePicSize: CGFloat = 250
    
    @Binding var friend: Friend
    
    var body: some View {
        VStack(spacing: 0) {
//            Image(friend.slothImage)
//                .resizable()
//                .scaledToFill()
//                .frame(height: 300)
//
//            Image(friend.name)
//                .resizable()
//                .scaledToFill()
//                .frame(width: profilePicSize, height: profilePicSize)
//                .mask(Circle())
//                .overlay(
//                    Circle()
//                        .stroke(lineWidth: 8)
//                        .foregroundColor(.white)
//                )
//                .offset(x: 0, y: -profilePicSize / 2)
//                .shadow(radius: 6)
//                .padding(.bottom, -profilePicSize / 2)
//
//            Text("\(Image(systemName: friend.icon)) \(friend.school)")
//                .font(.system(size: 24))
//                .padding()
            
            VStack(alignment: .leading) {
                Text("Attack")
                Slider(value: $friend.attack,
                       in: 0...15,
                       step: 1)
                
                Text("Defence")
                Slider(value: $friend.defense,
                       in: 0...15,
                       step: 1)
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(friend.name)
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: .constant(Friend(name: "Jia Chen",
                                                  description: "Bad",
                                                  attack: 10,
                                                  defense: 10)))
    }
}


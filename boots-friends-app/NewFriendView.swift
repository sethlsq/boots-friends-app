import SwiftUI

struct NewFriendView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var friends: [Friend]
    
    @State var friend = Friend(name: "",
                               description: "",
                               attack: 0,
                               defense: 0)
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Information")) {
                    TextField("Name", text: $friend.name)
                    TextField("Description", text: $friend.description)
                }
                
                Section(header: Text("Attributes")) {
                    
                    HStack {
                        Text("Attack")
                            .frame(width: 100, alignment: .leading)

                        Slider(value: $friend.attack,
                               in: 0...15,
                               step: 1)
                    }

                    HStack {
                        Text("Defence")
                            .frame(width: 100, alignment: .leading)

                        Slider(value: $friend.defense,
                                   in: 0...15,
                               step: 1)
                    }
                }
                
                Section {
                    Button("Save") {
                        friends.append(Friend(name: friend.name, description: friend.description, attack: friend.attack, defense: friend.defense))
                        dismiss()
                    }
                    
                    Button("Discard Friend") {
                        
                    }
                    .foregroundColor(.red)
                }
            }
            .navigationTitle("New Friend")
        }
    }
}

struct NewFriendView_Previews: PreviewProvider {
    static var previews: some View {
        NewFriendView(friends: .constant([]))
    }
}

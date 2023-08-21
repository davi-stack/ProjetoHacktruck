//
//  SwiftUIView.swift
//  ProjetoFInal
//
//  Created by Student08 on 21/08/23.
//

import SwiftUI
import AVKit
struct SwiftUIView: View {
    @State var play = "play.circle.fill"
    @State var p : playlist
    @State var songNow = Bundle.main.path(forResource: "tomp3.cc - Katy Perry Dark Horse ft Juicy J", ofType: "mp3");
    @State var musicNow = song(name: "nome da musica", path: "tomp3.cc - Katy Perry Dark Horse ft Juicy J", pic: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fge.globo.com%2Feu-atleta%2Ftreinos%2Fnoticia%2Fnove-dicas-de-meditacao-para-iniciantes.ghtml&psig=AOvVaw3qvpFNaYtLiGMeOi5hFBpG&ust=1692727111890000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCMj9n4Oq7oADFQAAAAAdAAAAABAE");
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        VStack(){
            VStack{
                ScrollView{
                    HStack{
                        VStack{
                            AsyncImage(url: URL(string: p.picMain)){ image in
                                image
                                    .resizable()
                            }placeholder: {
                                Color.gray
                            }
                            .frame(width: 150, height: 150)
                            Text(p.name)
                                .font(.system(size: 30))
                        }
                    }
                    ForEach(p.songs, id: \.self){ song in
                        ZStack{
                            Rectangle()
                                .frame(width: 400, height: 110)
                                .foregroundColor(.blue)
                            ZStack{
                                HStack{
                                    VStack{
                                        AsyncImage(url: URL(string: song.pic)){ image in
                                            image
                                                .resizable()
                                        }placeholder: {
                                            Color.gray
                                        }
                                        .frame(width: 70, height: 70)
                                    }
                                    Spacer()
                                }.padding(20)
                                Text(song.name)
                                    .colorInvert()
                                    .font(.system(size: 30))
                            }
                            
                        }
                    }
                }
            }
            
            ZStack{
                Rectangle()
                    .frame(width: 380, height: 70)
                    .foregroundColor(.blue)
                    HStack{
                        VStack{
                             
                            AsyncImage(url: URL(string: p.songs[0].pic)){ image in
                                image
                                    .resizable()
                            }placeholder: {
                                Color.gray
                            }
                            .frame(width: 70, height: 70)
                        }.padding(.top, 20)
                        Spacer()
                    }.padding([.leading, .bottom, .trailing], 20.0)
                VStack{
                    Text(musicNow.name)
                        .font(.system(size: 25))
                }
                HStack{
                    Spacer()
                        Button{
                            if(play == "play.fill"){
                                play = "pause.fill"
                                self.audioPlayer.play()
                            }else{
                                play = "play.fill"
                                self.audioPlayer.pause()
                            }
                        }
                    label: {
                        Image(systemName: play)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                    }
                }
            }
            
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: "tomp3.cc - Katy Perry Dark Horse ft Juicy J", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        .ignoresSafeArea()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(p: playlist(name: "exercicio de respiracao", picMain: "https://zenklub.com.br/blog/wp-content/uploads/2021/04/iStock-1139912908-1.jpg", songs: [
            song(name: "nome da musica", path: "tomp3.cc - Katy Perry Dark Horse ft Juicy J", pic: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fge.globo.com%2Feu-atleta%2Ftreinos%2Fnoticia%2Fnove-dicas-de-meditacao-para-iniciantes.ghtml&psig=AOvVaw3qvpFNaYtLiGMeOi5hFBpG&ust=1692727111890000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCMj9n4Oq7oADFQAAAAAdAAAAABAE"),
            song(name: "nome da musica", path: "tomp3.cc - Katy Perry Dark Horse ft Juicy J", pic: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fge.globo.com%2Feu-atleta%2Ftreinos%2Fnoticia%2Fnove-dicas-de-meditacao-para-iniciantes.ghtml&psig=AOvVaw3qvpFNaYtLiGMeOi5hFBpG&ust=1692727111890000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCMj9n4Oq7oADFQAAAAAdAAAAABAE"),
            song(name: "nome da musica", path: "tomp3.cc - Katy Perry Dark Horse ft Juicy J", pic: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fge.globo.com%2Feu-atleta%2Ftreinos%2Fnoticia%2Fnove-dicas-de-meditacao-para-iniciantes.ghtml&psig=AOvVaw3qvpFNaYtLiGMeOi5hFBpG&ust=1692727111890000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCMj9n4Oq7oADFQAAAAAdAAAAABAE"),
            song(name: "nome da musica", path: "tomp3.cc - Katy Perry Dark Horse ft Juicy J", pic: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fge.globo.com%2Feu-atleta%2Ftreinos%2Fnoticia%2Fnove-dicas-de-meditacao-para-iniciantes.ghtml&psig=AOvVaw3qvpFNaYtLiGMeOi5hFBpG&ust=1692727111890000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCMj9n4Oq7oADFQAAAAAdAAAAABAE"),
            song(name: "nome da musica", path: "tomp3.cc - Katy Perry Dark Horse ft Juicy J", pic: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fge.globo.com%2Feu-atleta%2Ftreinos%2Fnoticia%2Fnove-dicas-de-meditacao-para-iniciantes.ghtml&psig=AOvVaw3qvpFNaYtLiGMeOi5hFBpG&ust=1692727111890000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCMj9n4Oq7oADFQAAAAAdAAAAABAE"),
            song(name: "nome da musica", path: "tomp3.cc - Katy Perry Dark Horse ft Juicy J", pic: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fge.globo.com%2Feu-atleta%2Ftreinos%2Fnoticia%2Fnove-dicas-de-meditacao-para-iniciantes.ghtml&psig=AOvVaw3qvpFNaYtLiGMeOi5hFBpG&ust=1692727111890000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCMj9n4Oq7oADFQAAAAAdAAAAABAE")
        ]));
    }
}

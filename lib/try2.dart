class GameImage {
  String url;
  String title;

  GameImage(this.url, this.title);
}

class Game {
  String title;
  GameImage coverImage;
  String description;
  String studio;

  Game(this.title, this.coverImage, this.description, this.studio);
}

List<Game> games = [
  Game(
    "Horizon Zero Dawn",
    GameImage(
        //"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amarujala.com%2Fentertainment%2Fbollywood%2Frobin-hood-of-punjab-jagga-jatt-biopic-making-is-in-process&psig=AOvVaw3cTCXWFZIsVwIe85O2Bzw3&ust=1686218700896000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNi-u6f0sP8CFQAAAAAdAAAAABAE",
        "https://www.wallpaperflare.com/static/734/272/885/horizon-zero-dawn-playstation-4-logo-aloy-horizon-zero-dawn-wallpaper.jpg",
        ""),
    "",
    "Guerrilla Games",
  ),
  Game(
    "Metro Exodus",
    GameImage(
        "https://assets1.ignimgs.com/2018/12/14/metro-exodus---button-1544750418985.jpg",
        ""),
    "",
    "4A Games",
  ),
  Game(
    "Tom Clancy's The Division 2",
    GameImage(
        "https://cdn.division.zone/uploads/2019/03/tc-the-division-2-preload-start-times-sizes-header.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  Game(
    "Resident Evil 2",
    GameImage(
        "https://media.playstation.com/is/image/SCEA/resident-evil-2-box-art-01-ps4-us-12dec18?\$native_nt\$",
        ""),
    "",
    "Capcom",
  ),
  Game(
    "Resident Evil 2",
    GameImage(
        "https://media.playstation.com/is/image/SCEA/resident-evil-2-box-art-01-ps4-us-12dec18?\$native_nt\$",
        ""),
    "",
    "Capcom",
  ),
  Game(
    "Resident Evil 2",
    GameImage(
        "https://media.playstation.com/is/image/SCEA/resident-evil-2-box-art-01-ps4-us-12dec18?\$native_nt\$",
        ""),
    "",
    "Capcom",
  ),
];

List<Game> games2 = [
  Game(
    "Grand Theft Auto V",
    GameImage(
        "https://gpstatic.com/acache/26/25/1/uk/packshot-7136bdab871d6b2c8f07ccc9ad33b4d0.jpg",
        ""),
    "",
    "Rockstar Games",
  ),
  Game(
    "Just Cause 4",
    GameImage(
        "https://s3.gaming-cdn.com/images/products/2666/orig/just-cause-4-cover.jpg",
        ""),
    "",
    "Avalanche Studios",
  ),
  Game(
    "Total War: Three Kingdoms",
    GameImage(
        "https://content.totalwar.com/total-war/com.totalwar.www2019/uploads/2019/03/08145252/2.jpg",
        ""),
    "",
    "Feral Interactive",
  ),
  Game(
    "Resident Evil 2",
    GameImage(
        "https://media.playstation.com/is/image/SCEA/resident-evil-2-box-art-01-ps4-us-12dec18?\$native_nt\$",
        ""),
    "",
    "Capcom",
  ),
];

List<Game> featuredGames = [
  Game(
    "Total War: Three Kingdoms",
    GameImage(
        "https://content.totalwar.com/total-war/com.totalwar.www2019/uploads/2019/03/08145252/2.jpg",
        ""),
    "",
    "Feral Interactive",
  ),
  Game(
    "Call of Duty: Modern Warfare",
    GameImage(
        "https://images.hdqwalls.com/download/call-of-duty-modern-warfare-2019-4k-cb-1920x1080.jpg",
        ""),
    "",
    "Infinity Ward",
  ),
  Game(
    "Mortal Kombat 11",
    GameImage(
        "https://static.trueachievements.com/customimages/093902.jpg", ""),
    "",
    "NetherRealm Studios",
  )
];

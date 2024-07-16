terraform {
  required_providers {
    spotify = {
      version = "~> 0.1.5"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

data "spotify_search_track" "by_artist" {
  artists = ["Rammstein"]
  #  album = "album"
  #  name  = "song-name"
}

resource "spotify_playlist" "playlist" {
  name        = "Terraform Summer-Rock Playlist"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
    data.spotify_search_track.by_artist.tracks[0].id,
    data.spotify_search_track.by_artist.tracks[1].id,
    data.spotify_search_track.by_artist.tracks[2].id,
  ]
}

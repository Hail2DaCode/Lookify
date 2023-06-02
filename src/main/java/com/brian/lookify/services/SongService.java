package com.brian.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.brian.lookify.models.Song;
import com.brian.lookify.repositories.SongRepository;




@Service
public class SongService {
	private final SongRepository songRepository;
	
	public SongService(SongRepository songRepository) {
		this.songRepository = songRepository;
	}
	public List<Song> allSongs() {
		return songRepository.findAll();
	}

	public Song createSong(Song s) {
		return songRepository.save(s);
	}
	public void deleteSong(Long id) {
		songRepository.deleteById(id);
	}
	public Song findSong(Long id) {
		Optional<Song> optionalSong = songRepository.findById(id);
		if (optionalSong.isPresent()) {
			return optionalSong.get();
		}
		else {
			return null;
		}
	}
	public List<Song> allSongsByArtist(String query) {
		return songRepository.findByArtistContaining(query);
	}
	public List<Song> orderSongsByRating() {
		return songRepository.OrderByRatingDesc();
	}
}

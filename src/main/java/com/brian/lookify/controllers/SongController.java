package com.brian.lookify.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.brian.lookify.models.Song;
import com.brian.lookify.services.SongService;

import jakarta.validation.Valid;






@Controller
public class SongController {
	@Autowired
	SongService songService;
	@GetMapping("/")
	public String welcome() {
		return "welcome.jsp";
	}
	@GetMapping("/dashboard") 
		public String dash(Model model) {
			List<Song> songs = songService.allSongs();
			model.addAttribute("songs", songs);
			return "dash.jsp";
		}
	@GetMapping("/songs/Delete/{id}")
	public String destroy(@PathVariable("id") Long id) {
		songService.deleteSong(id);
		return "redirect:/dashboard";
	}
	@GetMapping("/songs/new")
	public String addSong(@ModelAttribute("song")Song song) {
		return "add.jsp";
	}
	@PostMapping("new/Song")
	public String create(
			@Valid @ModelAttribute("song") Song song,
			BindingResult result) {
		if(result.hasErrors()) {
			return "add.jsp";
		}
		else {
			songService.createSong(song);
			return "redirect:/dashboard";
		}
	}
	@GetMapping("/songs/{id}")
	public String show(@PathVariable("id") Long id,
			Model model) {
		Song song = songService.findSong(id);
		model.addAttribute(song);
		return "show.jsp";
	}
//	@PostMapping("/search")
//	public String search(@RequestParam(value="query") String query) {
//			return "redirect:/search/" + query;
//	}
	@GetMapping("/search")
	public String showSongsByArtist(Model model, 
			@RequestParam(value="artist", required = false) String search) {
		List<Song> songs = songService.allSongsByArtist(search);
		model.addAttribute("songs", songs);
		return "artist.jsp";
	}
	@GetMapping("/songs/top-ten")
	public String orderSongByRating(Model model) {
		List<Song> songs = songService.orderSongsByRating();
		model.addAttribute("songs", songs);
		return "rating.jsp";
	}
	
	
}

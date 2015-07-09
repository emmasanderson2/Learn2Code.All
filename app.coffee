$ ->
	# When 'GO' button is clicked on the 'For Loop' page,
	# this method prints out the chosen celebrity the designated
	# amount of times.
	$("#run_my_code").on 'click', ->
		$("#output").html ""
		for [parseInt($("#first_num").val())..parseInt($("#second_num").val())]
			person = null;
			switch $( "#dropdown option:selected" ).text()
				when "Little Girl"
					person = 'littlegirl.jpg'
				when "Little Boy"
					person = 'littleboy.jpg'
				when "Teenage Girl"
					person = 'teengirl.jpg'
				when "Teenage Boy"
					person = 'teenboy.jpg'
				when "Christiano Ronaldo"
					person = 'ronaldo.jpg'
				when "Lionel Messi"
					person = 'messi.jpg'
				when "Lebron James"
					person = 'lebronJames.jpg'
				when "Tom Brady"
					person = 'tomBrady.jpg'
				when "Mike Trout"
					person = 'mikeTrout.jpg'
				when "Cat"
					person = 'cat.png'
				when "Dog"
					person = 'dog.png'
				when "Cat and Dog"
					person = 'cat-and-dog.png'
				when "Sleeping Panda"
					person = 'sleepingPanda.jpg'
				when "Bird"
					person = 'bird.png'
				when "Taylor Swift"
					person = 'taylor.jpg'
				when "Kim Kardashian"
					person = 'kim.jpg'
				when "Beyonce"
					person = 'beyonce.jpg'
				when "Ariana Grande"
					person = 'arianaGrande.jpg'
				when "Emma Watson"
					person = 'emmaWatson.jpg'
			$ "<img>",
				src: "./media/#{person}"
			.appendTo "#output"
			console.log $("#first_num").val()

	# When 'GO' button is clicked on the 'If Statement' page,
	# this method shows the audio player that will play the song
	# 'You Belong with Me' by Taylor Swift.
	$("#go-if").on 'click', ->
		$("#output-if").html ""
		userInput = $("#user_lyrics").val().toLowerCase()
		switch $( "#dropdown-if option:selected" ).text()
			when "You Belong with Me - Taylor Swift"
				$.get './media/youbelongwithme.txt', (data, err)=>
					console.log err
					index = data.indexOf(userInput)
					if (index != -1)
						$ "<audio autobuffer controls id='audio-player' style='width:100%'>
						<source src='./media/YouBelongWithMe.mp3'></source></audio>"
						.appendTo "#output-if"
			when "Baby - Justin Beiber"
				$.get './media/baby.txt', (data, err)=>
					console.log err
					index = data.indexOf(userInput)
					console.log index
					if (index != -1)
						$ "<audio autobuffer controls id='audio-player' style='width:100%'>
						<source src='./media/Baby.mp3'></source></audio>"
						.appendTo "#output-if"
			when "Trap Queen - Fetty Wap"
				$.get './media/trapqueen.txt', (data, err)=>
					console.log err
					index = data.indexOf(userInput)
					console.log index
					if (index != -1)
						$ "<audio autobuffer controls id='audio-player' style='width:100%'>
						<source src='./media/TrapQueen.mp3'></source></audio>"
						.appendTo "#output-if"




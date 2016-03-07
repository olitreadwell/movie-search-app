$(document).ready(function(){

  $('#form').submit(function(event) {
    event.preventDefault();

    var query_terms = $('form').serialize().slice(2);
    $.get( "https://www.omdbapi.com/?s=" + query_terms +"&plot=full&r=json",
           function( data ) {
             $("#movieList").html("");
             var movieResults = data.Search;
             console.log(movieResults);

             var createdHtmlString = "";

             for (i=0; i < movieResults.length; i++) {
               event.preventDefault();
               var movie = movieResults[i]
               //For each movie object, create a piece of HTML
               var htmlString = "<div class='movieInfo'> " +
                   "<a href='http://imdb.com/title/" +
                   movie['imdbID'] +
                   "/'><img id='posters' src=" +
                   movie['Poster'] +
                   "></img></a>" +
                   "<div class='title'>" +
                   movie['Title']+
                   "</div>" +
                   "</div>"
               var createdHtmlString = createdHtmlString +  htmlString;
             };

             var createdHtmlString

             $("#movieList").append(createdHtmlString);

           });
  });

});

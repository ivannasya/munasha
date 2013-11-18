// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(function() {

var initialText = <%= raw @guide[0][:text].to_json %>;
var closingText = <%= raw @guide[1][:text].to_json %>;

var shakeCount = 0, shakeText = '';

$('button#shake_Nastya').click(
		function(){

			textContainer = $('p#pageTextSource');
				
			switch (shakeCount)
			{
				case 0:
					shakeText = '- Ну, Миша, ну, перестань! Я работаю!';
				break;
				
				case 1:
					shakeText = '- Мунаев, прекрати! Это непотребство!';
				break;

				case 2:
					shakeText = '- Миша, я Никите пожалуюсь! - Никита, чего он мне мешает! Скажи ему!'
				break;

				case 3:
					$('div.guide').html('<%= image_tag "guide_nick_2.png" %>');
					shakeText = '- Продолжай, друг.'
				break;

				case 4:
					$('div.guide').html('<%= image_tag "guide_nastya_2.png" %>');
					shakeText = '=_='
				break;

				default:
					shakeText = ' - Хватит...';
			}
		
		textContainer.html(shakeText);
		show_text();
		shakeCount = shakeCount + 1;

		}
	)


$('a.show_statistics').click(
		function(){
			$('div.statistics').slideToggle();
		}
	)

var textLine = 0;

$('div.guide img').click(
	function(){
		textLine++;
		if ( initialText[textLine] )
			show_text(initialText);
		}
	)


 var source,dest,len,now=0,delay=30,letters=1;

function show_text(text)
{
	source = text[textLine];
	now=0;
    //source = document.getElementById("pageTextSource");
    dest = document.getElementById("pageText");
    dest.innerHTML += '<Br/>';
    //dest.innerHTML = '';
    //len = source.innerHTML.length;
    len = source.length;
    show();
}

function show()
{
    // if ( source.innerHTML.substr(now,letters) == '-') { dest.innerHTML += '<Br/>' }
    //dest.innerHTML += source.innerHTML.substr(now,letters);
    dest.innerHTML += source.substr(now,letters);
    now+=letters;
    if( now < len ){setTimeout("show()",delay);}
}

  	show_text(initialText);
}
)
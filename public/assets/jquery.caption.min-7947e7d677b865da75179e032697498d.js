/*!
 * caption.js | easily and semantically add captions to your images
 * http://captionjs.com
 *
 * Copyright 2013-2014, Eric Magnuson
 * Released under the MIT license
 * https://github.com/jquery/jquery/blob/master/MIT-LICENSE.txt
 *
 * v0.9.5
 * Date: 2014-03-29
 */

(function(e,t,n){e.fn.captionjs=function(t){var n={class_name:"captionjs",schema:true,mode:"default",debug_mode:false,force_dimensions:false};var r=e.extend(n,t||{});return this.each(function(){if(r.debug_mode)console.log("caption.js | Starting.");var t=e(this),n=t.data("caption")?t.data("caption"):t.attr("alt"),i=t.wrap('<figure class="'+r.class_name+'"/>').after("<figcaption/>").parent(),s=t.next("figcaption").html(n),o,u;if(n==="")s.remove();if(r.debug_mode)console.log("caption.js | Caption: "+n);if(r.force_dimensions){if(r.debug_mode)console.log("caption.js | Forcing dimensions with a clone.");var a=i.clone().css({position:"absolute",left:"-9999px"}).appendTo("body");o=e("img",a).outerWidth(),u=e("figcaption",a).css("width",o).outerHeight();a.remove()}else{o=t.outerWidth();u=s.outerHeight()}i.width(o);if(r.schema===true){i.attr({itemscope:"itemscope",itemtype:"http://schema.org/Photograph"});s.attr("itemprop","name");t.attr("itemprop","image")}if(r.mode==="stacked"){i.addClass("stacked");s.css({"margin-bottom":"0",bottom:"0"})}if(r.mode==="animated"){i.addClass("animated");s.css({"margin-bottom":"0",bottom:-u})}if(r.mode==="hide"){i.addClass("hide");s.css({"margin-bottom":u,bottom:-u})}})}})(jQuery,window)
;

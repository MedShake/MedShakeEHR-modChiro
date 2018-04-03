/*
 * This file is part of MedShakeEHR.
 *
 * Copyright (c) 2017
 * fr33z00 <https://github.com/fr33z00>
 * http://www.medshake.net
 *
 * MedShakeEHR is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * MedShakeEHR is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with MedShakeEHR.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @author fr33z00 <https://github.com/fr33z00>
 */

$(document).ready(function() {

  $(document).scroll(function(e){
    if ($("#svgparent").length)
      $(".tools").css("top", Math.min($("#svgparent").height()-$(".tools").height()+20, Math.max(0, e.pageY+60-$("#svgparent").offset().top)));
  });

  $("body").on("touchstart", "#skeleton", function(e){
    if(e.touches.length>1)
      e.stopPropagation();
  });

  $("body").on("touchstart", "path,g,div,svg,form", function(e){
    if(e.touches.length > 1)
      e.preventDefault();
  });

  $("body").on("touchmove", "path,g,div,svg,form", function(e){
    if(e.touches.length > 1)
      e.preventDefault();
  });

  $("body").on("mousedown", ".showAll", function(){
    $(".os:not(.show),.articulation:not(.show)").each(function(idx,el){el.className.baseVal+=" show"})
  });
  $("body").on("mouseup", ".showAll", function(){
    $(".selectable,.os,.articulation").each(function(idx,el){el.className.baseVal=el.className.baseVal.replace(" show", "")})
  });

  $("body").on("click", ".zoomFit", function(){
    svgFit(true);
  });
  $(window).on("resize", function(){
    svgFit(true);
  });

  $("body").on("click", ".menuSingle", function (e) {
    var $menu = $(".svgMenuSingle")
      .show()
      .css({left: Math.max(0, e.pageX-50), top: Math.max(0, e.pageY-50)})
      .off('click')
      .on("mouseleave", function(){
        $(this).hide()
        .children("li:nth-child(n+3)").remove();
      })
      .on('click', 'a', function (e) {
        e.stopImmediatePropagation();
        var chk = $(this).children("input").prop("checked");
        $(this).parent().parent().find("input").prop("checked", false);
        $(this).children("input").prop("checked", !chk);
        //on fixe la valeur de l'entrée de formulaire
        var $entry = $("input[placeholder='"+$(this).attr('data-entry')+"']");
        var value = $(this).attr('data-value');
        if (chk)
          $entry.attr("value", "");
        else
          $entry.attr("value", value);
        setChiroSelected($(this).attr('data-entry'));
      });
    var title = $(this).attr("value");
    var items = $(this).attr("menu").split(",");
    $menu.children().first().html(title);
    for (var i=0; i< items.length; i++)
      $menu.append('<li><a tabindex="-1" style="text-decoration:none;color:#484848" class="containerCheck" data-entry="'+title
      + '" data-value="' +items[i]+
      '">'+items[i]+'<input type="radio"'+($("input[placeholder='"+title+"']").attr("value") == items[i] ? ' checked' : '')+
      '></input><span class="checkmarkRadio"></span></a></li>');
    return false;
  });

  $("body").on("click", ".menuMulti", function (e) {
    var $menu = $(".svgMenuMulti")
      .show()
      .css({left: Math.max(0, e.pageX-50), top: Math.max(0, e.pageY-50)})
      .off('click')
      .on("mouseleave", function(){
        $(this).hide()
        .children("li:nth-child(n+3)").remove();
      })
      .on('click', 'a', function (e) {
        e.stopImmediatePropagation();
        var chk = $(this).children("input").attr("checked");
        if (chk)
          $(this).children("input").removeAttr("checked");
        else
          $(this).children("input").attr("checked","");
        //on fixe la valeur de l'entrée de formulaire
        var $entry = $("input[placeholder='"+$(this).attr('data-entry')+"']");
        var value = $entry.attr("value");
        var newValue = $(this).attr('data-value');
        var idx;
        if (value && (idx=value.split(",").findIndex(function(v){return v==newValue})) >= 0)
          $entry.attr("value",value.split(",").filter(function(v,i){return i!=idx}).join());
        else if (value && value != "")
          $entry.attr("value", value + "," + newValue);
        else
          $entry.attr("value", newValue);
        setChiroSelected($(this).attr('data-entry'));
      });
    var title = $(this).attr("value");
    var items = $(this).attr("menu").split(",");
    var value = $("input[placeholder='"+title+"']").attr("value");
    $menu.children().first().html(title);
    for (var i=0; i< items.length; i++)
      $menu.append('<li><a tabindex="-1" style="text-decoration:none;color:#484848" class="containerCheck" data-entry="'+title
      + '" data-value="' +items[i]+
      '">'+items[i]+'<input type="checkbox"'+ ((value && value.split(",").findIndex(function(v){return v==items[i]}) >= 0) ? ' checked' : '')+
      '></input><span class="checkmarkCheck"></span></a></li>');
    return false;
  });

  $("body").on("click", function(){
    $(".svgMenuSingle,.svgMenuMulti").hide().children("li:nth-child(n+3)").remove();
  });

  $("body").on("click", ".noMenu", function(e){
    e.stopImmediatePropagation();
    var $entry = $("input[placeholder='"+$(this).attr("value")+"']");
    if ($entry.attr("value") == "true")
      $entry.attr("value", "");
    else
      $entry.attr("value", "true");
    setChiroSelected($(this).attr("value"));
  });  

  $("body").on("mouseenter", ".os,.articulation", function(e){
      this.className.baseVal+=" show";
      $("#mousehelper").html($(this).attr("value"))
      .removeClass("hide").css("left", (e.pageX-100)+"px").css("top", (e.pageY-50)+"px");
  });

  $("body").on("mouseleave", ".show", function(){
    this.className.baseVal=this.className.baseVal.replace(" show", "");
    $("#mousehelper:not(.hide)").html("").addClass("hide");
  });

});

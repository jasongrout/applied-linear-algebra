$(function() {
    data = [];
    for(var i=0;i<Math.PI*2;i+=.05) {
        data.push({x:Math.cos(i), y:Math.sin(i)});
    }
    var norm = function(p,v) {
        return Math.pow(Math.pow(Math.abs(v.x),p)+Math.pow(Math.abs(v.y),p),1/p);
    };
    p=2;
    $("#pvalue").text(p);
    $( "#slider" ).slider({value: p,
                           slide:(function(event, ui) {
                               p=ui.value;
                               $("#pvalue").text(p);
                               update()
                           }),
                           min: 1,
                           max:20,
                           step:.1});
    var update = function() {ball.attr("d", d3line2(data)+"Z");}

    var viz = d3.select("#viz")
        .append("svg:svg")
        .attr("width", 400)
        .attr("height", 400);
    var scalefactor=80;
    var d3line2 = d3.svg.line()
        .x(function(d){return scalefactor*d.x/norm(p,d);})
        .y(function(d){return scalefactor*d.y/norm(p,d);})
        .interpolate("linear");
    var ball = viz.append("svg:path")
        .style("fill", "blue")
        .attr("transform", "translate("+scalefactor+","+scalefactor+")")
    update();
})

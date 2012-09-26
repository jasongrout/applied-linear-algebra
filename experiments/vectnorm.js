$(function() {
    //vectornorm = (function() {
        var data = [];
        for(var i=0;i<Math.PI*2;i+=.05) {
            data.push({x:Math.cos(i), y:Math.sin(i)});
        }
        var norm = function(p,v) {
            return Math.pow(Math.pow(Math.abs(v.x),p)+Math.pow(Math.abs(v.y),p),1/p);
        };
        var p=2;
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
        
    

        matrix = [[1,2],[0,2]];
    var update = function() {ball.attr("d", d3line2(data)+"Z"); transformedball.attr("d", d3line2(data)+"Z")};
    var vect = [{x:Math.cos(Math.PI/12),y:Math.sin(Math.PI/12)}];
        var canvas = 600;
        var scalefactor=80;
    var padding=20;
        var viz = d3.select("#viz")
            .append("svg:svg")
            .attr("width", canvas)
        .attr("height", canvas).append("svg:g");
    

    var scx = d3.scale.linear()
        .domain([-5,5])
        .range([-canvas/2+padding,canvas/2-padding])
    var scy = d3.scale.linear()
        .domain([-5,5])
        .range([canvas/2-padding,-canvas/2+padding])

    var d3line2 = d3.svg.line()
        .x(function(d){return scx(d.x/norm(p,d));})
        .y(function(d){return scy(d.y/norm(p,d));})
        .interpolate("linear");


 
    var matinv = function(a,b,c,d) {
        // invert [a c]
        //        [b d]
        det = 1;//a*d-b*c
        return "matrix("+d/det+","+ -b/det+","+ -c/det+","+ a/det+",0,0)";
    }
    var transviz = viz.append("g").attr("transform", matinv(1,0,2,2));

    transviz.append("line").attr("x1",0).attr("y1",0).attr("x2",scx(0)).attr("y2",scy(1));

   var vector = viz.selectAll("line").data(vect).enter().append("svg:line")
        .attr("x1", 0)
        .attr("y1", 0)
        .attr("x2", function(d) {return scx(d.x)})
        .attr("y2", function(d) {return scy(d.y)})
        .style("stroke", "black")
        .attr("transform", matinv(1,0,2,2));//"matrix(1,0,2,2,0,0)");;

    var ball = viz.append("svg:path")
        .style("fill", "blue")
        .style("opacity", 0.6);
    var transformedball = transviz.append("svg:path")
        .style("fill", "red")
        .style("opacity", 0.6)
    viz.attr("transform", "translate("+canvas/2+","+canvas/2+")");
    console.log(d3line2(data));
    var axes=viz.append("g")
    axes.append("g").call(d3.svg.axis().scale(scx).tickSize(2));
    axes.append("g").call(d3.svg.axis().orient('left').scale(scy).tickSize(2));

        update();
//    })();
})

/*
var drag = d3.behavior.drag()
    .origin(Object)
    .on("drag", dragmove);

var svg = d3.select("body").selectAll("svg")
    .data(d3.range(16).map(function() { return {x: width / 2, y: height / 2}; }))
  .enter().append("svg")
    .attr("width", width)
    .attr("height", height);

svg.append("circle")
    .attr("r", radius)
    .attr("cx", function(d) { return d.x; })
    .attr("cy", function(d) { return d.y; })
    .call(drag);

function dragmove(d) {
  d3.select(this)
      .attr("cx", d.x = Math.max(radius, Math.min(width - radius, d3.event.x)))
      .attr("cy", d.y = Math.max(radius, Math.min(height - radius, d3.event.y)));
}

    viz.selectAll("#vectortip").data(vect).enter().append("circle")
        .call(d3.behavior.drag()
              .origin(function() {return {x:0,y:0}})
              .on("drag", function(d) {
                  d.x = 2);
                  d.y = 1));
                  vis.selectAll("line").data(
                      .attr("x2", x)
                      .attr("y2", y);
              })
              .on("dragend", function() {
                  delete this.__origin__;
              }));
*/

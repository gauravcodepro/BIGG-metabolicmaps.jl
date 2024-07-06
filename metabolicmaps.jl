#! /usr/bin/env julia
# Author Gaurav 
# Universitat Potsdam
# Date 2024-6-26
# vector graphics implementation for making the metabolic maps
# thanks to https://github.com/cormullion for having a proper scientific result approaching discussion. 
using Luxor
using CSV
using DataFrames
function vectorgraph(reactionfile, startreaction, endreaction)
    # the format of the reaction file is the following 
    # http://bigg.ucsd.edu/models/iJO1366/reactions/PRASCSi
    readfile = open(reactionfile)
    idstringStart = String[]
    idstringEnd = String[]
    interaction_enter = String[]
    interaction_out = String[]
    for i in readfile.readlines
      push!(idstringStart,split(i, ",")[1])
      push!(idstringEnd,split(i,",")[2])
      if length(idstringStart) != length(idstringEnd)
        println("program execution halted")
      end 
      if length(idstringStart) == length(idarrayEnd)
         start = startreaction
         end = enreaction
        @png begin 
            background("white")
            setdash("dot")
            arrow(startreaction, reactionend, action = :stroke)
            label(startreaction, :NW, start)
            label(endreaction, :NW, end)
            for i in 1:length(idstringStart)
                for j in 1:length(idstringEnd)
                    arc(Point(-1, 1, ))
                    label(idstringStart[i], 0.0)
                    label(idstringEnd, pi)
                end
            end
        end
        end 

# pseudocode for the map interations and finalizing this 
arrow(Point(0, 0), Point(0, -65))
arrow(Point(0, 0), Point(100, -65), arrowheadlength=20, arrowheadangle=pi/4, linewidth=.3)
arrow(Point(0, 0), 100, π, π/2, arrowheadlength=25,   arrowheadangle=pi/12, linewidth=1.25)
pts = ngon(Point(0, 0), 100, 8, vertices=true)
sethue("mediumvioletred")
arrow(pts[2:5]..., :stroke, startarrow=false, finisharrow=true)
sethue("cyan4")
arrow(pts[3:6]..., startarrow=true, finisharrow=true)
sethue("midnightblue")
arrow(pts[[4, 2, 6, 8]]..., :stroke,
    startarrow=true,
    finisharrow=true,
    arrowheadangle = π/6,
    arrowheadlength = 35,
    linewidth  = 1.5)
        

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
        

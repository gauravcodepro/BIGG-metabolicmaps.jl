# vector-metabolic-maps
- using julia and vector graphics to make escher metabolic maps. 
- linear programming and struct and vector graphics.
- one additonal function to include before the release
```
suppose you have a reaction of a metabolite like this:
http://bigg.ucsd.edu/models/iJO1366/reactions/PRASCSi
then the csv file to this vectorgraphic should be:
start, end
asp__L_c,h_c
atp_c,adp_c
asp__L,pi_c
```
 - your startreaction and end reaction will be ``` 5aizc_c, 25aics_c```
```
# Author Gaurav
# Univeristat Potsdam
# Date: 2024-6-26
using Luxor
function vectorgraph(reactionfile, startreaction, endreaction):
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
```

Gaurav \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany

#! /usr/bin/env julia
# Author Gaurav 
# Universitat Potsdam
# Date 2024-6-20

# vector graphics implementation for making the metabolic maps

function(reactiontype, stoichiometry)
  if !reactiontype && !stoichoiometry 
    println("vector graphics cant be made for this component")
  if reactiontype && stoichiometry
      inmetabolite = Vector{Int16}
      outmetabolite = Vector{Int16]
   if reactiontype == "reversible"
        
      
  

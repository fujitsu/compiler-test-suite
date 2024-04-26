character(len=4)::st1='xxpa',st2='ssxx'

associate(aa=>(st1//st2))
 if(aa/='xxpassxx') print*,101
 print*,aa(3:6)
end associate
end

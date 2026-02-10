subroutine s(j1,k1)
character,value::j1
character      ::k1
if (j1/='a') stop '1-1'
if (k1/='b') stop '1-2'
return
entry      u(j1,k1)  bind(c)
if (j1/='c') stop '2-1'
if (k1/='d') stop '2-2'
return
entry      ent2(j1,k1)
if (j1/='e') stop '3-1'
if (k1/='f') stop '3-2'
end subroutine 

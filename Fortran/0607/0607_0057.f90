integer :: a = 3
a = a -1
associate(a=>4)
 associate(b=>a,a=>5)
  if ( (b .eq. 4) .AND. (a .eq. 5) ) print *,'PASS'
 end associate
end associate
end

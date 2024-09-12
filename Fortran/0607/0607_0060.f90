integer :: a = 3
a = a -1
associate(a=>4)
 associate(b=>5,a=>b)
  if ( (b .eq. 5) .AND. (a .eq. 5) ) print *,'PASS'
 end associate
end associate
end

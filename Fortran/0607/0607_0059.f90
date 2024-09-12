integer :: a = 3
a = a -1
associate(a=>4)
 associate(b=>a,a=>b)
  if (b .eq. a)  print *,'PASS'
 end associate
end associate
end

integer :: a = 3
a = a - 1
associate(a=>4,b=>a)
  if (b .EQ. 4) print *,'PASS'
end associate
end

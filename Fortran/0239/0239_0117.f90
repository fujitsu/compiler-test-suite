implicit none
integer a
a=1
associate( p=> a)
  if (p/=1) print *,101
end associate
print *,'pass'
end

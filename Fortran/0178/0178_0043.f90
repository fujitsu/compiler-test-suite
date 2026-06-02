function fun01() bind(c)
  character :: fun01,ent01
  fun01 = 'f'
entry ent01()
  ent01 = 'e'
end function
  character :: ent01
  if (1.eq.2) print *,ent01()
print *,'pass'
end

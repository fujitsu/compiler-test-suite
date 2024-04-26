integer,allocatable :: i
allocate(i)
i=10
 associate(aa=>i)
  print *, aa
  print *, i
 end associate
 print *, 'pass'
end

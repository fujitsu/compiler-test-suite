integer :: i = 10
 associate(aa=>i+1)
  print *, aa
  print *, i
 end associate
 print *, 'pass'
end

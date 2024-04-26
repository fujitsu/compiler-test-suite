integer :: i(2:10) = 10
 associate(aa=>i(2:10:2))
  print *, aa
  print *, i
 end associate
 print *, 'pass'
end

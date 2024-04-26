integer :: i(2:10) = 10
 associate(aa=>i)
  print *, aa
  print *, i
 end associate
 print *, 'pass'
end

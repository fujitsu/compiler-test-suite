integer :: ii=2

associate(aa=>ii)
 print*,aa
 associate(aa=>aa)
  if(aa==2) print*,'pass'
 end associate
end associate
end

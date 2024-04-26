program main

 integer*2,dimension(2,2,2:1) ::a
 integer*2,dimension(2,2)::backend
 integer*2,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2_2,3_2,4_2,6_2/),(/2,2,0/))
 integer*2,parameter,dimension(2,2)::frontend = minval(b,dim=3)

 a = reshape((/2_2,3_2,4_2,6_2/),(/2,2,0/))
 backend = minval(a,dim=3)
 print*,frontend
 print *, backend

 do i = 1,2
 do j = 1,2
 print*, frontend(i,j), '---', backend(i,j)
 if (frontend(i,j).ne.backend(i,j)) then
  print*, '??? (Error: I->I) ???'
  else
  print*, 'I -> I'
 endif
 enddo
  enddo

end

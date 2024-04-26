program main

 character(len =1,kind=1),dimension(2,2,2:1) ::a
 character(len =1, kind=1),dimension(2,2)::backend
 character(len =1, kind=1),parameter,dimension(2,2,2:1) ::b = RESHAPE((/'d','a','z','c'/),(/2,2,0/))
 character(len =1,kind=1),parameter,dimension(2,2)::frontend = maxval(b,dim=3)

 a = reshape((/'d','a','z','c'/),(/2,2,0/))
 backend = maxval(a,dim=3)
 print*,frontend
 print *, backend

 do i = 1,2
 do j = 1,2
 print*, frontend(i,j), '---', backend(i,j)
 if (frontend(i,j).ne.backend(i,j)) then
  print*, '??? (Error:) ???'
  else
  print*, 'PASS'
 endif
 enddo
  enddo

end

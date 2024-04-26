program main

 character(len =1,kind=4),dimension(2,2,2:1) ::a
 character(len =1, kind=4),dimension(2,2)::backend
 character(len =1, kind=4),parameter,dimension(2,2,2:1) ::b = RESHAPE((/'l','e','m','p'/),(/2,2,0/))
 character(len =1,kind=4),parameter,dimension(2,2)::frontend = maxval(b,dim=3)

 integer,parameter::p = kind(maxval(b,dim=3)) 
 a = reshape((/'l','e','m','p'/),(/2,2,0/))
 backend = maxval(a,dim=3)
 print*,frontend
 print *, backend

 do i = 1,2
 do j = 1,2
 print*, frontend(i,j), '---', backend(i,j)
 if (frontend(i,j).ne.backend(i,j)) then
  print*, '??? (Error: UTF->UTF) ???'
  else
  print*, 'UTF -> UTF'
 endif
 enddo
  enddo
 call check1(p, kind(maxval(a,dim=3)))

end
subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine

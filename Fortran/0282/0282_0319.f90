program main

 character(len =1,kind=1),dimension(2,2,2:1) ::a
 character(len =1, kind=1),dimension(2,2)::backend
 character(len =1, kind=1),parameter,dimension(2,2,2:1) ::b = RESHAPE((/'d','a','z','c'/),(/2,2,0/))
 character(len =1,kind=1),parameter,dimension(2,2)::frontend = minval(b,dim=3)

 integer,parameter::p = kind(minval(b,dim=3))
 a = reshape((/'d','a','z','c'/),(/2,2,0/))
 backend = minval(a,dim=3)
 do i = 1,2
 do j = 1,2
 if (frontend(i,j).ne.backend(i,j)) then
  print*, '??? (Error: ) ???'
  else
  print*, 'PASS'
 endif
 enddo
  enddo
call check1(p, kind(minval(a,dim=3)))

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

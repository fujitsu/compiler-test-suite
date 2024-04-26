program main

 character(len=5, kind=4),dimension(2,2,0) ::a
 integer,dimension(2,2)::backend
 character(len=5,kind=4),parameter,dimension(2,2,0) ::b = RESHAPE((/"ghijk","cdefg","efghi","abcde"/),(/2,2,0/))
 integer,parameter,dimension(2,2)::frontend = minloc(b,dim=3)
 integer::n(2)
 integer,parameter::g(2) = shape(minloc(b,dim=3)) 
 integer,parameter::p = kind(minloc(b,dim=3))
 a = reshape((/"ghijk","cdefg","efghi","abcde"/),(/2,2,0/))
 backend = minloc(a,dim=3)
 n = shape(minloc(a,dim=3))
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

call check1(p,kind(minloc(a,dim=3)))
call check(g,n)

end

subroutine check(x, y)
integer x(2), y(2)
integer::i
print*, x,'--',y
do i=1,2
if (x(i).ne.y(i)) then
print*, '??? (Error: Shape) ???'
else
print*, 'SHAPE OK '
endif
enddo
end subroutine

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine

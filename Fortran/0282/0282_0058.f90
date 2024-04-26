program main

 logical,dimension(2,2,2:1) ::a
 integer,dimension(2,2)::backend
 logical,parameter,dimension(2,2,2:1) ::b = RESHAPE((/.true.,.false.,.true.,.true./),(/2,2,0/))
 integer::n(2)
 integer,parameter,dimension(2,2)::frontend = count(b,dim=3)
 integer,parameter::p  = kind(count(b,dim=3))
 integer,parameter::g(2) = shape(count(b,dim=3))
 a = reshape((/.true., .false.,.true.,.true./),(/2,2,0/))
 backend = count(a,dim=3)
 n = shape(count(a,dim=3))
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

 call check(p, kind(count(a,dim=3)))
 call check1(g,n)

end

subroutine check1(x, y)
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

subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine


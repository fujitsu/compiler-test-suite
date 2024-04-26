program main

 character(len =5,kind=4),dimension(2,2,2:1) ::a
 character(len =5, kind=4),dimension(2,2)::backend
 character(len =5, kind=4),parameter,dimension(2,2,2:1) ::b = RESHAPE((/"lmnop","efghi","mnopq","pqrst"/),(/2,2,0/))
 character(len =5,kind=4),parameter,dimension(2,2)::frontend = maxval(b,dim=3)

 integer,parameter::p = kind(maxval(b,dim=3))
 a = reshape((/"lmnop","efghi","mnopq","pqrst"/),(/2,2,0/))
 backend = maxval(a,dim=3)
  
 do i = 1,2
 do j = 1,2
 print*,ichar(frontend(i,j)(1:1)), '---', ichar(backend(i,j)(1:1))
 print*,ichar(frontend(i,j)(2:2)), '---', ichar(backend(i,j)(2:2))
 print*,ichar(frontend(i,j)(3:3)), '---', ichar(backend(i,j)(3:3))
 print*,ichar(frontend(i,j)(4:4)), '---', ichar(backend(i,j)(4:4))
 print*,ichar(frontend(i,j)(5:5)), '---', ichar(backend(i,j)(5:5))
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

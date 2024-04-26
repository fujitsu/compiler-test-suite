program main

 real*4,dimension(2,2,2:1) ::a
 real*4,dimension(2,2)::backend
 real*4,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2.0_4,3.0_4,4.0_4,6.0_4/),(/2,2,0/))
 real*4,parameter,dimension(2,2)::frontend = maxval(b,dim=3)
 
 integer,parameter::p = kind(maxval(b,dim=3))

 a = reshape((/2.0_4,3.0_4,4.0_4,6.0_4/),(/2,2,0/))
 backend = maxval(a,dim=3)
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

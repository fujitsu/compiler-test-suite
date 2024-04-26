program main

 real*16,dimension(2,2,2:1) ::a
 real*16,dimension(2,2)::backend
 real*16,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2.0_16,3.0_16,4.0_16,6.0_16/),(/2,2,0/))
 real*16,parameter,dimension(2,2)::frontend = minval(b,dim=3)
 integer,parameter::p = kind(minval(b,dim=3))
 a = reshape((/2.0_16,3.0_16,4.0_16,6.0_16/),(/2,2,0/))
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

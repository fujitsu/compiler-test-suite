program main

 integer*8,dimension(2,2,2:1) ::a
 integer*8,dimension(2,2)::backend
 integer*8,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2_8,3_8,4_8,6_8/),(/2,2,0/))
 integer*8,parameter,dimension(2,2)::frontend = minval(b,dim=3)
 integer,parameter::p = kind(minval(b,dim=3))

 a = reshape((/2_8,3_8,4_8,6_8/),(/2,2,0/))
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

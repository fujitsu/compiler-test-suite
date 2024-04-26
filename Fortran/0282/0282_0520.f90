program main
 
 real*8,dimension(2,2,2:1) ::a
 real*8,dimension(2,2)::backend
 real*8,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2.0_8,3.0_8,4.0_8,6.0_8/),(/2,2,0/))
 real*8,parameter,dimension(2,2)::frontend = sum(b,dim=3) 
 
 integer,parameter::p = kind(sum(b,dim=3))
 a = reshape((/2.0_8,3.0_8,4.0_8,6.0_8/),(/2,2,0/)) 
 backend = sum(a,dim=3)
 print*,frontend
 print *, backend
 
 do i = 1,2
 do j = 1,2
 print*, frontend(i,j), '---', backend(i,j)
 if (frontend(i,j).ne.backend(i,j)) then
  print*, '??? (Error: R->R) ???'
  else
  print*, 'R -> R'
 endif
 enddo
  enddo 
call check(p, kind(sum(b,dim=3)))

end
subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine

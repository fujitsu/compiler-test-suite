program main
 
 integer*2,dimension(2,2,2:1) ::a
 integer*4,dimension(2,2)::backend
 integer*2,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2_2,3_2,4_2,6_2/),(/2,2,0/))
 integer*4,parameter,dimension(2,2)::frontend = sum(b,dim=3) 
 integer,parameter::p = kind(sum(b,dim=3)) 

 a = reshape((/2_2,3_2,4_2,6_2/),(/2,2,0/)) 
 backend = sum(a,dim=3)
 print*,frontend
 print *, backend
 
 do i = 1,2
 do j = 1,2
 print*, frontend(i,j), '---', backend(i,j)
 if (frontend(i,j).ne.backend(i,j)) then
  print*, '??? (Error:I2->I2) ???'
  else
  print*, 'I2 -> I2'
 endif
 enddo
  enddo 

call check(p, kind(sum(a,dim=3)))

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

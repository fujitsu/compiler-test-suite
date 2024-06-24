program main
 
 integer*1,dimension(2,2,2:1) ::a
 integer*4,dimension(2,2)::backend
 integer*1,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2_1,3_1,4_1,6_1/),(/2,2,0/))
 integer*4,parameter,dimension(2,2)::frontend = product(b,dim=3) 
 integer,parameter::p = kind(product(b,dim=3)) 

 a = reshape((/2_1,3_1,4_1,6_1/),(/2,2,0/)) 
 backend = product(a,dim=3)
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

call check(p, kind(product(a,dim=3)))

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
program main

 real*8,dimension(2,2,2:1) ::a
 real*8,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2.0_8,3.0_8,4.0_8,6.0_8/),(/2,2,0/))
 real*8::backend
 real*8,parameter::frontend  = product(b)
 integer,parameter::p = kind(product(b))
 a = reshape((/2.0_8,3.0_8,4.0_8,6.0_8/),(/2,2,0/))
 backend = product(a)
 print*,frontend
 print *, backend
print*, frontend, '---', backend
 if (frontend.ne.backend) then
  print*, '??? (Error: ) ???'
  else
  print*, 'PASS'
  endif

call check(p, kind(product(a)))
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



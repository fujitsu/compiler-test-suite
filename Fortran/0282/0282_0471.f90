program main

 complex*16,dimension(2,2,2:1) ::a
 complex*16,parameter,dimension(2,2,2:1) ::b = RESHAPE((/(2.0_8,2.0_8),(3.0_8,3.0_8),&
                               (4.0_8,4.0_8),(6.0_8,6.0_8)/),(/2,2,0/))
 complex*16::backend
 complex*16,parameter::frontend  = sum(b)
 integer,parameter::p = kind(sum(b))

 a = reshape((/(2.0_8,2.0_8),(3.0_8,3.0_8),(4.0_8,4.0_8),(6.0_8,6.0_8)/),(/2,2,0/))
 backend = sum(a)
 print*,frontend
 print *, backend

print*, frontend, '---', backend
 if (frontend.ne.backend) then
  print*, '??? (Error: ) ???'
  else
  print*, 'PASS'
 endif

call check(p, kind(sum(a)))
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

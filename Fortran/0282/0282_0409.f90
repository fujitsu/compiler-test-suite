program main

 integer,dimension(2,2,2:1) ::a
 integer,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2,3,4,6/),(/2,2,0/))
 integer::backend
 integer,parameter::frontend  = product(b)
 integer,parameter::p = kind(product(b))
 a = reshape((/2,3,4,6/),(/2,2,0/))
 backend = product(b)
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




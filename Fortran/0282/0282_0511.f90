program main

 real,dimension(2,2,2:1) ::a
 real,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2.0_4,3.0_4,4.0_4,6.0_4/),(/2,2,0/))
 real::backend
 real,parameter::frontend  = sum(b)
 integer,parameter::p = kind(sum(b))

 a = reshape((/2.0_4,3.0_4,4.0_4,6.0_4/),(/2,2,0/))
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

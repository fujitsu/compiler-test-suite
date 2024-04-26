program main

 integer*2,dimension(2,2,2:1) ::a
 integer*2,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2_2,3_2,4_2,6_2/),(/2,2,0/))
 integer*2::backend
 integer*2,parameter::frontend  = sum(b)
 integer,parameter::p = kind(sum(b))
 a = reshape((/2_2,3_2,4_2,6_2/),(/2,2,0/))
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


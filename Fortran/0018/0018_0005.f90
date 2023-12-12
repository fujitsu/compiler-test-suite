
program main

 real*16,dimension(2,2,2:1) ::a
 real*16,parameter,dimension(2,2,2:1) ::b = RESHAPE((/2.0_16,3.0_16,4.0_16,6.0_16/),(/2,2,0/))
 integer, dimension(3)::backend
 integer,parameter, dimension(3)::frontend  =maxloc(b,kind=8)
 integer,parameter::p = kind(minloc(b,kind=8))
 a = reshape((/2.0_16,3.0_16,4.0_16,6.0_16/),(/2,2,0/))
 backend = maxloc(a)
 do i = 1,3
 if (frontend(i).ne.backend(i)) then
  print*, '??? (Error: ) ???'
  else
 endif
 end do
 
 call check(p, kind(maxloc(a,kind=8)))
print *,'OK'

end
subroutine check(x, y)
integer x, y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
endif
end subroutine

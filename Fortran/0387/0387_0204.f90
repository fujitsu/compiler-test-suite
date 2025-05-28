call sub1(r1)
call sub2(r2)
call sub3(r3)
if (r1.ne.r2) then
   print *,'fail'
 else if (r2.ne.r3) then
   print *,'fail'
 else
   print *, "pass"
 endif
end
subroutine sub1(r1)
real :: r1
intrinsic :: sin
procedure(sin) ,pointer :: p
p=>sin
r1 = p(1.2)
print *,p(1.2)
end
subroutine sub2(r2)
r2 = sin(1.2)
end
subroutine sub3(r3)
implicit none
real :: r3
intrinsic :: sin
procedure(sin) ,pointer :: p
p=>sin
r3 = p(1.2)
end

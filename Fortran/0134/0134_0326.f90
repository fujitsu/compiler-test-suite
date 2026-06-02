subroutinetest03()
procedure(real),pointer :: paa
intrinsic sin,int
paa=>sin
call sub(paa)
contains
subroutine sub(ppp)
external :: ppp
if (abs(ppp(1.0)-sin(1.0))>0.0001) print *,'fail'
end subroutine
end
call test03()
print *,"pass"
end

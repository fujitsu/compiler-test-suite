intrinsic cos
external s123
call s(cos)
call s(s123)
print *,'pass'
contains
subroutine s(x)
real:: x
external::x
call t(x)
end
end
function   s123(z)
s123=cos(z)
end
subroutine t(x)
real:: x
 if (x(0.1)/=cos(0.1)) print *,101,x(0.1),cos(0.1)
end

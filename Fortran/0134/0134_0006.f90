subroutine ss(f11,f12)
implicit character(*)(f)
external ::f11,f12
call s01(f11)
end
subroutine s
character x11,x12
external  x11,x12
call ss(x11,x12)
end
function x11()
character(*) x11
x11='1'
end  
function x12()
character(*) x12
x12='1'
end  
call s
print *,'pass'
end
subroutine s01(x)
character(1) x
if (x()/='1')print *,x()
end

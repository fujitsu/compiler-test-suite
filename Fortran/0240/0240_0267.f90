real a,b
a=2.0
b=1.0
call zee(a,b)
call zee(b,a)
print *,'pass'
end
subroutine zee (a, b)
implicit none
real, intent(inout) :: a, b
if (a>b) then
return
else
a=a*b
return
end if
end subroutine zee

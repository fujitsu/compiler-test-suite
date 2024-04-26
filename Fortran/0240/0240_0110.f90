integer :: a=2, b=4
print *,'pass'
if (a>b) then
error stop
end if

end
subroutine subbb()
integer :: a=2, b=4
if (a > b) then
error stop
end if
end

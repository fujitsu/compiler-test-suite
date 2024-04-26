call s
print *,'pass'
end
subroutine s
real :: r
integer :: i
i = minexponent (r)
if(i.ne.-125) print *,'err'
end

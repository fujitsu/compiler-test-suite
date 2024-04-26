call s
print *,'pass'
end
subroutine s
real :: r
integer :: i
i = maxexponent(r)
if(i.ne.128) print *,'err'
end

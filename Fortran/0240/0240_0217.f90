call s
print *,'pass'
end
subroutine s
real :: r
integer :: i
i = minexponent (r)
if (kind(i).eq.4) then
if(i.ne.-125) print *,'err'
endif
end

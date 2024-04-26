call s
print *,'pass'
end
subroutine s
real :: r
integer :: i
i = maxexponent (r)
if (kind(i).eq.4) then
if(i.ne.128) print *,'err'
endif
end

real :: r
integer :: i
i = digits(r)

if (kind(i).eq.4) then
if (i.ne.24) print *,'err'
endif
print *,'pass'
end

real(4) :: r
integer :: i
i = digits (r)

if (kind(r).eq.4) then
if (i.ne.24) print *,'err'
end if

print *,'pass'
end

call s
print *,'pass'
end
subroutine s
integer, dimension(3,-4:0) :: i
integer :: k
k = sizeof (i)
if (kind(k).eq.4) then
if(k.ne.60) print *,'err'
endif
end

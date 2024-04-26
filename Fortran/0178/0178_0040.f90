integer :: i
i=1
call sub(%val(i))
print *,'pass'
end
subroutine sub(ii)
integer :: ii
if (1.eq.2) ii=ii
end

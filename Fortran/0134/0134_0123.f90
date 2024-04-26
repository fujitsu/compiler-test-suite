module m
integer:: k1=1,k2=2,k3=3,k4=4
end
subroutine s
use m
i=1
i=2
end subroutine
call s
print *,'pass'
end

module m1
contains
subroutine s01(a02)
implicit character(:) (a)
procedure():: a02
call x(a02)
end subroutine
end

subroutine s
use m1
common /z/k
procedure():: a01
call s01(a01)
if (k/=2)print *,'error'
end
call s
print *,'pass'
end
subroutine x(y)
procedure ()::y
call y()
end
subroutine a01
common /z/k
k=2
end

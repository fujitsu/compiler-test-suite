call s21( [1])
call s22( [1])
call s23( [1])
call s24( [1])
print *,'pass'
contains

subroutine s21( p) 
type(*)::p(..)
end subroutine
subroutine s22( p)
integer::p(:)
end subroutine
subroutine s23( p) 
type(*)::p(*)
end subroutine
subroutine s24( p) 
integer::p(..)
end subroutine
end

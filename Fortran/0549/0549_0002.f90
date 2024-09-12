module m1
type x 
  integer::x1=1
end type
contains
  subroutine s1
  call s1s
  contains
    subroutine s1s
    type(x)::v
    if (v%x1/=1) print *,101
    end subroutine
  end subroutine
  subroutine s2
  call s2s
  contains
    subroutine s2s
    type(x)::v
    if (v%x1/=1) print *,201
    end subroutine
  end subroutine
end
    subroutine s3
    use m1
    type(x)::v
    if (v%x1/=1) print *,301
    end subroutine
use m1
call s1
call s2
call s3
print *,'pass'
end

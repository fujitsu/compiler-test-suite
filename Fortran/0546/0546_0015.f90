module m1
  type x
   integer::x1=1
  end type
  integer::f=0
end
module m2
  use m1
  contains
  subroutine s21
    use m1
    call s31
    call s32
    contains
     subroutine s31
       use m1
       type(x):: v1
       if (v1%x1/=1) f=f+1
     end subroutine
     subroutine s32
       type(x):: v2
       if (v2%x1/=1) f=f+2
     end subroutine
  end subroutine
  subroutine s22
    use m1
    call s31
    call s32
    contains
     subroutine s31
       use m1
       type(x):: v3
       if (v3%x1/=1) f=f+4
     end subroutine
     subroutine s32
       type(x):: v4
       if (v4%x1/=1) f=f+8
     end subroutine
  end subroutine
end
use m2
call s21
call s22
if (f/=0) print *,101,f
print *,'pass'
end



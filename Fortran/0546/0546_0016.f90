module m1
  type x
   integer::x1=1
  end type
  integer::f=0
  type(x),save::v5
end
module m2
  use m1
  type(x),save::v6
  contains
  subroutine s21
    use m1
    type(x)::v7
    if (v6%x1/=1)f=f+16
    if (v7%x1/=1)f=f+32
    call s31
    call s32
    contains
     subroutine s31
       use m1
       type(x):: v1
       if (v1%x1/=1) f=f+1
    if (v6%x1/=1)f=f+64
    if (v7%x1/=1)f=f+128
     end subroutine
     subroutine s32
       type(x):: v2
       if (v2%x1/=1) f=f+2
    if (v6%x1/=1)f=f+256
    if (v7%x1/=1)f=f+512
     end subroutine
  end subroutine
  subroutine s22
    use m1
    type(x)::v8
    if (v6%x1/=1)f=f+1024
    if (v8%x1/=1)f=f+2048
    call s31
    call s32
    contains
     subroutine s31
       use m1
       type(x):: v3
       if (v3%x1/=1) f=f+4
    if (v6%x1/=1)f=f+4096
    if (v8%x1/=1)f=f+4096*2
     end subroutine
     subroutine s32
       type(x):: v4
       if (v4%x1/=1) f=f+8
    if (v6%x1/=1)f=f+4096*4
    if (v8%x1/=1)f=f+4096*8
     end subroutine
  end subroutine
end
use m2
    type(x)::v9
call s21
call s22
    if (v6%x1/=1)f=f+4096*16
    if (v9%x1/=1)f=f+4096*32
if (f/=0) print *,101,f
print *,'pass'
end



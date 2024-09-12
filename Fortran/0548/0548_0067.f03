call s1
call s2
print *,'apss'
end
subroutine s1
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
logical(1)::l1
logical(2)::l2
logical(4)::l4
logical(8)::l8
real(4)::r
real(8)::d
real(16)::q
complex(4)::c
complex(8)::cd
complex(16)::cq
character::ch
class(*),pointer::cl

call s33(storage_size(a=i1),1)
call s33(storage_size(a=i2),2)
call s33(storage_size(a=i4),3)
call s33(storage_size(a=i8),4)
call s31(storage_size(kind=1,a=i1),1)
call s32(storage_size(kind=2,a=i1),1)
call s33(storage_size(kind=4,a=i1),1)
call s34(storage_size(kind=8,a=i1),1)
call s31(storage_size(kind=1,a=i2),2)
call s32(storage_size(kind=2,a=i2),2)
call s33(storage_size(kind=4,a=i2),2)
call s34(storage_size(kind=8,a=i2),2)
call s31(storage_size(kind=1,a=i4),3)
call s32(storage_size(kind=2,a=i4),3)
call s33(storage_size(kind=4,a=i4),3)
call s34(storage_size(kind=8,a=i4),3)
call s31(storage_size(kind=1,a=i8),4)
call s32(storage_size(kind=2,a=i8),4)
call s33(storage_size(kind=4,a=i8),4)
call s34(storage_size(kind=8,a=i8),4)
call s33(storage_size(a=l1),1)
call s33(storage_size(a=l2),2)
call s33(storage_size(a=l4),3)
call s33(storage_size(a=l8),4)
call s31(storage_size(kind=1,a=l1),1)
call s32(storage_size(kind=2,a=l1),1)
call s33(storage_size(kind=4,a=l1),1)
call s34(storage_size(kind=8,a=l1),1)
call s31(storage_size(kind=1,a=l2),2)
call s32(storage_size(kind=2,a=l2),2)
call s33(storage_size(kind=4,a=l2),2)
call s34(storage_size(kind=8,a=l2),2)
call s31(storage_size(kind=1,a=l4),3)
call s32(storage_size(kind=2,a=l4),3)
call s33(storage_size(kind=4,a=l4),3)
call s34(storage_size(kind=8,a=l4),3)
call s31(storage_size(kind=1,a=l8),4)
call s32(storage_size(kind=2,a=l8),4)
call s33(storage_size(kind=4,a=l8),4)
call s34(storage_size(kind=8,a=l8),4)
call s33(storage_size(a=r),3)
call s33(storage_size(a=d),4)
call s33(storage_size(a=q),5)
call s31(storage_size(kind=1,a=r),3)
call s32(storage_size(kind=2,a=r),3)
call s33(storage_size(kind=4,a=r),3)
call s34(storage_size(kind=8,a=r),3)
call s31(storage_size(kind=1,a=d),4)
call s32(storage_size(kind=2,a=d),4)
call s33(storage_size(kind=4,a=d),4)
call s34(storage_size(kind=8,a=d),4)
call s31(storage_size(kind=1,a=q),0)
call s32(storage_size(kind=2,a=q),5)
call s33(storage_size(kind=4,a=q),5)
call s34(storage_size(kind=8,a=q),5)
call s33(storage_size(a=c),4)
call s33(storage_size(a=cd),5)
call s33(storage_size(a=cq),6)
call s31(storage_size(kind=1,a=c),4)
call s32(storage_size(kind=2,a=c),4)
call s33(storage_size(kind=4,a=c),4)
call s34(storage_size(kind=8,a=c),4)
call s31(storage_size(kind=1,a=cd),0)
call s32(storage_size(kind=2,a=cd),5)
call s33(storage_size(kind=4,a=cd),5)
call s34(storage_size(kind=8,a=cd),5)
call s31(storage_size(kind=1,a=cq),0)
call s32(storage_size(kind=2,a=cq),6)
call s33(storage_size(kind=4,a=cq),6)
call s34(storage_size(kind=8,a=cq),6)
call s33(storage_size(a=ch),1)
call s33(storage_size(a=ch//ch),2)
call s31(storage_size(kind=1,a=ch),1)
call s32(storage_size(kind=2,a=ch),1)
call s33(storage_size(kind=4,a=ch),1)
call s34(storage_size(kind=8,a=ch),1)
call s31(storage_size(kind=1,a=ch//""),1)
call s32(storage_size(kind=2,a=ch//""),1)
call s33(storage_size(kind=4,a=""//ch),1)
call s34(storage_size(kind=8,a=""//ch),1)
call s31(storage_size(kind=1,a=ch//""//ch),2)
call s32(storage_size(kind=2,a=ch//""//ch),2)
call s33(storage_size(kind=4,a=ch//""//ch),2)
call s34(storage_size(kind=8,a=ch//""//ch),2)
call s33(storage_size(a=cl),0)
contains
subroutine s31(x,y)
integer(1)::x
integer::y
select case(y)
case(1)
if(x/=8) print *,'err01'
case(2)
if(x/=16) print *,'err02'
case(3)
if(x/=32) print *,'err03'
case(4)
if(x/=64) print *,'err04'
case(5)
if(x/=128) print *,'err05'
case(6)
if(x/=256) print *,'err06'
case default
end select
end subroutine
subroutine s32(x,y)
integer(2)::x
integer::y
select case(y)
case(1)
if(x/=8) print *,'err11'
case(2)
if(x/=16) print *,'err11'
case(3)
if(x/=32) print *,'err11'
case(4)
if(x/=64) print *,'err11'
case(5)
if(x/=128) print *,'err11'
case(6)
if(x/=256) print *,'err11'
case default
end select
end subroutine
subroutine s33(x,y)
integer(4)::x
integer::y
select case(y)
case(1)
if(x/=8) print *,'err21',x
case(2)
if(x/=16) print *,'err22',x
case(3)
if(x/=32) print *,'err23',x
case(4)
if(x/=64) print *,'err24',x
case(5)
if(x/=128) print *,'err25',x
case(6)
if(x/=256) print *,'err26',x
case default
end select
end subroutine
subroutine s34(x,y)
integer(8)::x
integer::y
select case(y)
case(1)
if(x/=8) print *,'err31'
case(2)
if(x/=16) print *,'err31'
case(3)
if(x/=32) print *,'err31'
case(4)
if(x/=64) print *,'err31'
case(5)
if(x/=128) print *,'err31'
case(6)
if(x/=256) print *,'err31'
case default
end select
end subroutine
end

subroutine s2
integer(1)::i1(1)
integer(2)::i2(1,2)
integer(4)::i4(1,1,3)
integer(8)::i8(1,1,1,4)
logical(1)::l1(1,1,1,1,5)
logical(2)::l2(1,1,1,1,1,6)
logical(4)::l4(1,1,1,1,1,1,7)
logical(8)::l8(1,1,1,1,1,1,1,8)
real(4)::r(1,1,1,1,1,1,1,1,9)
real(8)::d(1,1,1,1,1,1,1,1,1,10)
real(16)::q(1,1,1,1,1,1,1,1,1,1,11)
complex(4)::c(1:0)
complex(8)::cd(0)
complex(16)::cq(1,0)
character::ch(0,0)
class(*),pointer::cl(:)
allocate(cl,source=[integer::])

call s23(storage_size(a=i1),1)
call s23(storage_size(a=i2),2)
call s23(storage_size(a=i4),3)
call s23(storage_size(a=i8),4)
call s21(storage_size(kind=1,a=i1),1)
call s22(storage_size(kind=2,a=i1),1)
call s23(storage_size(kind=4,a=i1),1)
call s24(storage_size(kind=8,a=i1),1)
call s21(storage_size(kind=1,a=i2),2)
call s22(storage_size(kind=2,a=i2),2)
call s23(storage_size(kind=4,a=i2),2)
call s24(storage_size(kind=8,a=i2),2)
call s21(storage_size(kind=1,a=i4),3)
call s22(storage_size(kind=2,a=i4),3)
call s23(storage_size(kind=4,a=i4),3)
call s24(storage_size(kind=8,a=i4),3)
call s21(storage_size(kind=1,a=i8),4)
call s22(storage_size(kind=2,a=i8),4)
call s23(storage_size(kind=4,a=i8),4)
call s24(storage_size(kind=8,a=i8),4)
call s23(storage_size(a=l1),1)
call s23(storage_size(a=l2),2)
call s23(storage_size(a=l4),3)
call s23(storage_size(a=l8),4)
call s21(storage_size(kind=1,a=l1),1)
call s22(storage_size(kind=2,a=l1),1)
call s23(storage_size(kind=4,a=l1),1)
call s24(storage_size(kind=8,a=l1),1)
call s21(storage_size(kind=1,a=l2),2)
call s22(storage_size(kind=2,a=l2),2)
call s23(storage_size(kind=4,a=l2),2)
call s24(storage_size(kind=8,a=l2),2)
call s21(storage_size(kind=1,a=l4),3)
call s22(storage_size(kind=2,a=l4),3)
call s23(storage_size(kind=4,a=l4),3)
call s24(storage_size(kind=8,a=l4),3)
call s21(storage_size(kind=1,a=l8),4)
call s22(storage_size(kind=2,a=l8),4)
call s23(storage_size(kind=4,a=l8),4)
call s24(storage_size(kind=8,a=l8),4)
call s23(storage_size(a=r),3)
call s23(storage_size(a=d),4)
call s23(storage_size(a=q),5)
call s21(storage_size(kind=1,a=r),3)
call s22(storage_size(kind=2,a=r),3)
call s23(storage_size(kind=4,a=r),3)
call s24(storage_size(kind=8,a=r),3)
call s21(storage_size(kind=1,a=d),4)
call s22(storage_size(kind=2,a=d),4)
call s23(storage_size(kind=4,a=d),4)
call s24(storage_size(kind=8,a=d),4)
call s21(storage_size(kind=1,a=q),0)
call s22(storage_size(kind=2,a=q),5)
call s23(storage_size(kind=4,a=q),5)
call s24(storage_size(kind=8,a=q),5)
call s23(storage_size(a=c),4)
call s23(storage_size(a=cd),5)
call s23(storage_size(a=cq),6)
call s21(storage_size(kind=1,a=c),4)
call s22(storage_size(kind=2,a=c),4)
call s23(storage_size(kind=4,a=c),4)
call s24(storage_size(kind=8,a=c),4)
call s21(storage_size(kind=1,a=cd),0)
call s22(storage_size(kind=2,a=cd),5)
call s23(storage_size(kind=4,a=cd),5)
call s24(storage_size(kind=8,a=cd),5)
call s21(storage_size(kind=1,a=cq),0)
call s22(storage_size(kind=2,a=cq),6)
call s23(storage_size(kind=4,a=cq),6)
call s24(storage_size(kind=8,a=cq),6)
call s23(storage_size(a=ch),1)
call s23(storage_size(a=ch//ch),2)
call s21(storage_size(kind=1,a=ch),1)
call s22(storage_size(kind=2,a=ch),1)
call s23(storage_size(kind=4,a=ch),1)
call s24(storage_size(kind=8,a=ch),1)
call s21(storage_size(kind=1,a=ch//""),1)
call s22(storage_size(kind=2,a=ch//""),1)
call s23(storage_size(kind=4,a=""//ch),1)
call s24(storage_size(kind=8,a=""//ch),1)
call s21(storage_size(kind=1,a=ch//""//ch),2)
call s22(storage_size(kind=2,a=ch//""//ch),2)
call s23(storage_size(kind=4,a=ch//""//ch),2)
call s24(storage_size(kind=8,a=ch//""//ch),2)
call s23(storage_size(a=cl),3)
contains
subroutine s21(x,y)
integer(1)::x
integer::y
select case(y)
case(1)
if(x/=8) print *,'err01'
case(2)
if(x/=16) print *,'err02'
case(3)
if(x/=32) print *,'err03'
case(4)
if(x/=64) print *,'err04'
case(5)
if(x/=128) print *,'err05'
case(6)
if(x/=256) print *,'err06'
case default
end select
end subroutine
subroutine s22(x,y)
integer(2)::x
integer::y
select case(y)
case(1)
if(x/=8) print *,'err11'
case(2)
if(x/=16) print *,'err11'
case(3)
if(x/=32) print *,'err11'
case(4)
if(x/=64) print *,'err11'
case(5)
if(x/=128) print *,'err11'
case(6)
if(x/=256) print *,'err11'
case default
end select
end subroutine
subroutine s23(x,y)
integer(4)::x
integer::y
select case(y)
case(1)
if(x/=8) print *,'err21',x
case(2)
if(x/=16) print *,'err22',x
case(3)
if(x/=32) print *,'err23',x
case(4)
if(x/=64) print *,'err24',x
case(5)
if(x/=128) print *,'err25',x
case(6)
if(x/=256) print *,'err26',x
case default
end select
end subroutine
subroutine s24(x,y)
integer(8)::x
integer::y
select case(y)
case(1)
if(x/=8) print *,'err31'
case(2)
if(x/=16) print *,'err31'
case(3)
if(x/=32) print *,'err31'
case(4)
if(x/=64) print *,'err31'
case(5)
if(x/=128) print *,'err31'
case(6)
if(x/=256) print *,'err31'
case default
end select
end subroutine
end

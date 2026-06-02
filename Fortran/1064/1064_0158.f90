subroutine s1
parameter(m=100)
  type x1
   integer:: v1
   integer,allocatable:: v2(:)
  end type
  type x2
    integer:: w1
    integer:: w2
    integer:: w3
    integer:: w4
    type(x1),allocatable:: w5
  end type
type (x2):: a
allocate ( a%w5 )
allocate ( a%w5%v2(m) )

call set

if ((a%w1/=1)) print *,101
if ((a%w2/=2)) print *,102
if ((a%w5%v1/=3)) print *,103
if (any(a%w5%v2/=4)) print *,104

write(1,'("out-a : ",z16.16)') loc(a)
write(1,'("out : ",z16.16)') loc(a%w5)
!$omp parallel firstprivate( a )
write(1,'("IN1-a : ",z16.16)') loc(a)
write(1,'("IN1  : ",z16.16)') loc(a%w5)
if ((a%w1/=1)) print *,201
if ((a%w2/=2)) print *,202
if ((a%w5%v1/=3)) print *,203
if (any(a%w5%v2/=4)) print *,204
write(1,'("IN2-a : ",z16.16)') loc(a)
write(1,'("IN2  : ",z16.16)') loc(a%w5)
!$omp end parallel
if ((a%w1/=1)) print *,301
if ((a%w2/=2)) print *,302
if ((a%w5%v1/=3)) print *,303
if (any(a%w5%v2/=4)) print *,304

contains
subroutine set
parameter(m=100)
a%w1=1
a%w2=2
a%w5%v1=3
a%w5%v2=4
end subroutine
end
do k=1,2
call s1
end do
print *,'pass'
end

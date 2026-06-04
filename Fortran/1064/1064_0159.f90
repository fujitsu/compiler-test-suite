subroutine s1
parameter(m=100)
  type x2
    integer:: w1
    integer:: w2
    integer:: w3
    integer:: w4
   integer,allocatable:: v2(:)
  end type
type (x2):: a
allocate ( a%v2(m) )

call set

if ((a%w1/=1)) print *,101
if ((a%w2/=2)) print *,102
if (any(a%v2/=4)) print *,104

write(1,'("out-a : ",z16.16)') loc(a)
write(1,'("out : ",z16.16)') loc(a%v2)
!$omp parallel firstprivate( a )
write(1,'("IN1-a : ",z16.16)') loc(a)
write(1,'("IN1 : ",z16.16)') loc(a%v2)
if ((a%w1/=1)) print *,201
if ((a%w2/=2)) print *,202
if (any(a%v2/=4)) print *,204
write(1,'("IN2-a : ",z16.16)') loc(a)
write(1,'("IN2 : ",z16.16)') loc(a%v2)
!$omp end parallel
if ((a%w1/=1)) print *,301
if ((a%w2/=2)) print *,302
if (any(a%v2/=4)) print *,304

contains
subroutine set
a%w1=1
a%w2=2
a%v2=4
end subroutine
end
do k=1,10
call s1
end do
print *,'pass'
end

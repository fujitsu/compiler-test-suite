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
    type(x1),allocatable:: w5(:)
  end type
type (x2),allocatable:: a
allocate ( a )
allocate ( a%w5(m) )
do n2=1,m
allocate ( a%w5(n2)%v2(m) )
end do

call set

if ((a%w1/=1)) print *,101
if ((a%w2/=2)) print *,102
do n2=1,m
if ((a%w5(n2)%v1/=3)) print *,103
if (any(a%w5(n2)%v2/=4)) print *,104
end do

write(1,'("out : ",z16.16)') loc(a%w5)
!$omp parallel firstprivate( a )
if ((a%w1/=1)) print *,201
if ((a%w2/=2)) print *,202
do n2=1,m
if ((a%w5(n2)%v1/=3)) print *,203
if (any(a%w5(n2)%v2/=4)) print *,204
end do
write(1,'("IN  : ",z16.16)') loc(a%w5)
!$omp end parallel
if ((a%w1/=1)) print *,301
if ((a%w2/=2)) print *,302
do n2=1,m
if ((a%w5(n2)%v1/=3)) print *,303
if (any(a%w5(n2)%v2/=4)) print *,304
end do

contains
subroutine set
parameter(m=100)
a%w1=1
a%w2=2
do n2=1,m
a%w5(n2)%v1=3
a%w5(n2)%v2=4
end do
end subroutine
end
call s1
print *,'pass'
end

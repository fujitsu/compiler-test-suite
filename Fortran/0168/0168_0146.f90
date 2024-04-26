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
type (x2),allocatable:: a(:)
allocate ( a(m) )
do n1=1,m
allocate ( a(n1)%w5(m) )
do n2=1,m
allocate ( a(n1)%w5(n2)%v2(m) )
end do
end do

call set

do n1=1,m
if ((a(n1)%w1/=1)) print *,101
if ((a(n1)%w2/=2)) print *,102
do n2=1,m
if ((a(n1)%w5(n2)%v1/=3)) print *,103
if (any(a(n1)%w5(n2)%v2/=4)) print *,104
end do
end do

write(1,'("out : ",z16.16)') loc(a(1)%w5)
!$omp parallel firstprivate( a )
do n1=1,m
if ((a(n1)%w1/=1)) print *,201
if ((a(n1)%w2/=2)) print *,202
do n2=1,m
if ((a(n1)%w5(n2)%v1/=3)) print *,203
if (any(a(n1)%w5(n2)%v2/=4)) print *,204
end do
end do
write(1,'("IN  : ",z16.16)') loc(a(1)%w5)
!$omp end parallel
do n1=1,m
if ((a(n1)%w1/=1)) print *,301
if ((a(n1)%w2/=2)) print *,302
do n2=1,m
if ((a(n1)%w5(n2)%v1/=3)) print *,303
if (any(a(n1)%w5(n2)%v2/=4)) print *,304
end do
end do

contains
subroutine set
parameter(m=100)
do n1=1,m
a(n1)%w1=1
a(n1)%w2=2
do n2=1,m
a(n1)%w5(n2)%v1=3
a(n1)%w5(n2)%v2=4
end do
end do
end subroutine
end
do k=1,10
call s1
end do
print *,'pass'
end

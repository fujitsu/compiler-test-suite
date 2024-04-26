subroutine s1
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
allocate ( a%w5%v2(10000) )

call set

if (a%w1/=1) print *,101
if (a%w2/=2) print *,102
if (a%w5%v1/=3) print *,103
if (any(a%w5%v2/=4)) print *,104
write(1,'(z16.16)') loc(a%w5%v2)

contains
subroutine set
a%w1=1
a%w2=2
a%w5%v1=3
a%w5%v2=4
end subroutine
end
do k=1,10
call s1
end do
print *,'pass'
end

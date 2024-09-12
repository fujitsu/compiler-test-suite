subroutine s1
type y
 integer::v
end type
type x
 integer::v
 type(y),allocatable:: p
end type
type(x),allocatable:: s,ss
type(y):: t=y(2)
allocate(s)
s = x( 1 , t)
if (s%v/=1) print *,101
if (.not.allocated(s%p)) print *,101
if (s%p%v/=2) print *,301
call move_alloc(s , ss)
if (allocated(s)) print *,401
if (ss%v/=1) print *,3101
if (.not.allocated(ss%p)) print *,5101
if (ss%p%v/=2) print *,3301
end
do k=1,10
 call s1
end do
 print *,'pass'
end

subroutine s1
type x
 integer::v
 type(x),allocatable:: p
end type
type(x),allocatable:: s
allocate(s)
s = x( 1 , s)
if (s%v/=1) print *,101
if (.not.allocated(s%p)) print *,102
s = x( 2 , s)
if (s%v/=2) print *,1021
if (s%p%v/=1) print *,1022
if (.not.allocated(s%p%p)) print *,123
s = x( 3 , s)
if (s%v/=3) print *,10211
if (s%p%v/=2) print *,10222
if (s%p%p%v/=1) print *,10223
if (.not.allocated(s%p%p%p)) print *,1231
end
do k=1,10
 call s1
end do
 print *,'pass'
end

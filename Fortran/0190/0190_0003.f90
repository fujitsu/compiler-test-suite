module m1
 type x
   integer::x0=2
   integer,allocatable::x1
end type
 type(x),target::t
contains
  function p() result(r)
    type(x),pointer::r
    r=>t
  end 
  subroutine s( d )
    type(x),intent(out):: d
    allocate(d%x1)
    d%x1=3
  end
end
use m1
character(100)::b,c
if (t%x0/=2) print *,101
do k=1,1000
if (allocated(t%x1)) print *,102
call s( p() )
if (t%x0/=2) print *,121
if (.not.allocated(t%x1)) print *,122
if (t%x1/=3) print *,131
write(1,'(z16.16)')loc(t%x1)
deallocate(t%x1)
end do
rewind 1
read(1,'(a)') b
do k=1,999
read(1,'(a)') c
if(b/=c) print *,801
end do
print *,'pass'
end

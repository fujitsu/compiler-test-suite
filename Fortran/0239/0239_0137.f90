module m1 
 type x0
   integer:: v01
 end type
 type,extends(x0):: x1
    integer::v11
 end type
class (x1),allocatable:: a1
integer::fv0=0,fv1=0
contains
subroutine f0(d)
type(x0)::d
if (d%v01/=1) print *,101
fv0=fv0+1
end subroutine
subroutine f1(d)
type (x1)::d
if (d%v11/=2) print *,102
fv1=fv1+1
end subroutine

end 

subroutine s1
use m1
allocate(a1)
a1%v01=1
a1%v11=2
deallocate(a1)
if (fv0/=0) print *,103
if (fv1/=0) print *,104
end

call s1
print *,'pass'
end

   

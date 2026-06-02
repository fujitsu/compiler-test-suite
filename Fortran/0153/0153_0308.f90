module m1
interface
integer function ext(dmy)
integer :: dmy
end function
end interface

procedure(ext),pointer :: gnr
interface gnr
procedure :: gnr
end interface

end module
use m1
gnr=> ext
if (gnr(1)/=1) print *,101,gnr(1)
if (ext(1)/=1) print *,102,ext(1)
print *,'pass'
end

integer function ext(dmy)
integer :: dmy
ext=dmy
end function

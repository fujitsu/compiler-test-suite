Module m
interface gnr
elemental subroutine s(d1,d2)
integer,intent(out) :: d1
integer,intent(in),value:: d2
end subroutine
end interface
end module

use m
integer :: a1(3)
integer :: a2(3)=[1,2,3]
 call gnr(a1,a2)
print*,"pass"
end 
elemental subroutine s(d1,d2)
integer,intent(out) :: d1
integer,intent(in),value:: d2
d1=d2
end subroutine

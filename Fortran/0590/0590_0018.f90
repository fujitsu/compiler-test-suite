module m1
type ty
integer::alc
character(len=:),allocatable::msg1
end type

interface assignment(=)
 module procedure::equal
end interface
        
contains
 subroutine equal(d1, d2)
 type(ty), intent(inout)::d1
 character(len=*), value, intent(in)::d2

 if(len(d2) /= 5) print*, 101, len(d2)
 if(d2 /= "BBBBB") print*, 102, d2

 d1%msg1 = d2
end subroutine
end module

use m1
character(len=:),allocatable::ch2
type(ty),pointer::obj

allocate(character(5)::ch2)
allocate(obj)
allocate(character(len=5)::obj%msg1)

ch2 = "BBBBB"

obj = ch2
if(obj%msg1 /= "BBBBB") print*, 201, obj%msg1
print*, "PASS"
end

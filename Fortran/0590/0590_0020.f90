module m1
type ty
integer::alc
character(len=:),allocatable::msg1(:)
end type

interface assignment(=)
 module procedure::equal
end interface
        
contains
 subroutine equal(d1, d2)
 type(ty), intent(inout)::d1
 character(len=*), value, intent(in)::d2(:)

 if(len(d2(1)) /= 5) print*, 101, len(d2)
 if(all(d2 /= "BBBBB")) print*, 102, d2
 if(size(d2) /= 3) print*, 103, size(d2)

 d1%msg1 = d2
end subroutine
end module

use m1
character(len=:),allocatable::ch2(:)
type(ty)::obj

allocate(character(5)::ch2(3))
allocate(character(len=5)::obj%msg1(3))

ch2 = "BBBBB"

obj = ch2
if(all(obj%msg1 /= "BBBBB")) print*, 202
print*, "PASS"
end

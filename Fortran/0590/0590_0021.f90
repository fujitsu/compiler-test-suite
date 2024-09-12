module m1
interface operator (+)
 module procedure::concat
end interface
        
contains
 function concat(d1, d2)
 character(len=*), value, intent(in)::d1(:)
 character(len=*), value, intent(in)::d2(:)
 character(len=:), allocatable :: concat(:)

 allocate(character(len=5)::concat(3))

 if(len(d1) /= 2) print*, 101
 if(len(d2) /= 3) print*, 102
 if(all(d1 /= "12")) print*, 103
 if(all(d2 /= "345")) print*, 104
 if(size(d1) /= 3) print*, 105, size(d1)
 if(size(d2) /= 3) print*, 106, size(d2)

 concat = d1 // d2
end function
end module

use m1
character(len=:),allocatable::ch1(:)
character(len=:),allocatable::ch2(:)
character(len=:),allocatable::ch3(:)

allocate(character(5)::ch1(3))
allocate(character(2)::ch2(3))
allocate(character(3)::ch3(3))

ch2 = "12"
ch3 = "345"

ch1 = ch2 + ch3
if(all(ch1 /= "12345")) print*, 201
print*, "PASS"
end

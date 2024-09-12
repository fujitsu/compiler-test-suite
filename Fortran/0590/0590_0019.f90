module m1
interface operator (+)
 module procedure::concat
end interface
        
contains
 function concat(d1, d2)
 character(len=*), value, intent(in)::d1
 character(len=*), value, intent(in)::d2
 character(len=:), allocatable :: concat

 allocate(character(len=5)::concat)

 if(len(d1) /= 2) print*, 101
 if(len(d2) /= 3) print*, 102
 if(d1 /= "12") print*, 103
 if(d2 /= "345") print*, 104

 concat = d1 // d2
end function
end module

use m1
character(len=:),allocatable::ch1
character(len=:),allocatable::ch2
character(len=:),allocatable::ch3

allocate(character(5)::ch1)
allocate(character(2)::ch2)
allocate(character(3)::ch3)

ch2 = "12"
ch3 = "345"

ch1 = ch2 + ch3
if(ch1 /= "12345") print*, 201, ch1
print*, "PASS"
end

module m1
character(len=:),allocatable :: ch1
character(len=:), pointer :: ch2

type ty
integer::ii
contains
 procedure,nopass::sub
end type

contains
subroutine sub(dmy1, dmy2)
character(len=*), value :: dmy1
character(len=*), value, optional :: dmy2

if(len(dmy1) /= 4) print*, 101
if(dmy1 /= "AAAA") print*, 103
dmy1 = "1111"

if (present(dmy2)) then
 if(dmy2 /= "BBBBB") print*, 104
 if(len(dmy2) /= 5) print*, 102
 dmy2 = "22222"
end if
end subroutine
end module

program main
use m1
character(len=5), target :: msg

allocate(character(4)::ch1)
ch2 => msg

ch1 = "AAAA"
ch2 = "BBBBB"

call sub(dmy1=ch1)
if(ch1 /= "AAAA") print*, 201

call sub(dmy1=ch1, dmy2=ch2)
if(ch1 /= "AAAA") print*, 202
if(msg /= "BBBBB") print*, 203
print*, "PASS"
end

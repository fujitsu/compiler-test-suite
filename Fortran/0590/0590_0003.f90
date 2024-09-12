module m1
interface
subroutine sub(d1, d2, n) 
integer :: n
character(len=n),value :: d1
character(len=*),value, optional :: d2
end subroutine
end interface
end module

program pro

call s1
print *,"PASS"

contains
subroutine s1
use m1
integer :: ii
character(:),allocatable :: ch1
character(:),allocatable :: ch2

allocate(character(5)::ch1)
allocate(character(4)::ch2)

ii  = 5 
ch1 = "AAAAA"
ch2 = "BBBB"

call sub(d1=ch1, n=ii)
if (ch1 /= "AAAAA") print *,101

call sub(ch1, ch2, ii)
if (ch1 /= "AAAAA") print *,301
if (ch2 /= "BBBB") print *,302
end subroutine
end
   
subroutine sub(d1, d2, n)
  integer :: n
  character(len=n),value :: d1
  character(len=*),value, optional :: d2

   if (len(d1) /= 5) print *,201
   if (d1 /= "AAAAA") print *,203

   if (present(d2)) then
     if (len(d2) /= 4) print *,202
     if (d2 /= "BBBB") print *,204
     d2 = "2222"
   end if

   d1 = "11111"
end subroutine

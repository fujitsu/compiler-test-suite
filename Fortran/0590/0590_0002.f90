module m1
interface
subroutine sub(d1, d2, n) 
integer(kind=4) :: n
character(len=(ABS(n+2-2)-1)),value :: d2(:,:)
character(len=UBOUND(d2,2)),value :: d1(:,:)
end subroutine
end interface
end module

program pro

call s1
print *,"PASS"

contains
subroutine s1 
use m1
integer(kind=4) :: ii
character(:),allocatable :: ch1(:,:)
character(:),allocatable :: ch2(:,:)

allocate(character(5)::ch1(2,3))
allocate(character(4)::ch2(4,5))

ii  = 5 
ch1 = "AAAAA"
ch2 = "BBBB"

call sub(ch1, ch2, ii)
if (all(ch1 /= "AAAAA")) print *,101
if (all(ch2 /= "BBBB")) print *,102
end subroutine
end
   
subroutine sub(d1, d2, n)
   integer(kind=4) :: n
   character(len=(ABS(n+2-2)-1)),value :: d2(:,:)
   character(len=UBOUND(d2,2)),value :: d1(:,:)

   if (len(d1) /= 5) print *,201
   if (len(d2) /= 4) print *,202
   if (all(d1 /= "AAAAA")) print *,203
   if (all(d2 /= "BBBB")) print *,204
   if (size(d1) /= 6) print *,205
   if (size(d2) /= 20) print *,206
   
   d1 = "11111"
   d2 = "2222"
end subroutine

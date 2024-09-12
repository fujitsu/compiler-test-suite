module m1
integer::n
contains
 subroutine s(d1, d2)
  character(len=*),value :: d1
  character(len=n),value :: d2

   if (len(d1) /= 5) print *,201
   if (len(d2) /= 4) print *,202
   if (d1 /= "AAAAA") print *,203
   if (d2 /= "BBBB") print *,204
   
   d1 = "11111"
   d2 = "2222"
 end subroutine
end
    
subroutine s1   
use m1
character(:),allocatable :: ch1
character(:),allocatable :: ch2

allocate(character(5)::ch1)
allocate(character(4)::ch2)

n   = 4
ch1 = "AAAAA"
ch2 = "BBBB"

call s(ch1, ch2)
if (ch1 /= "AAAAA") print *,101
if (ch2 /= "BBBB") print *,102
end
      
program pro
call s1
print *,"PASS"
end
   


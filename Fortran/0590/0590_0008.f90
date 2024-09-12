program pro
interface
function fun(d1, d2, n) 
integer :: n
character(len=n),value :: d1
character(len=(ABS(n+2-2)-1)),value :: d2
end function
end interface

call s1
print *,"PASS"

contains
subroutine s1 
integer :: ii
character(:),allocatable :: ch1
character(:),allocatable :: ch2

allocate(character(5)::ch1)
allocate(character(4)::ch2)

ii  = 5 
ch1 = "AAAAA"
ch2 = "BBBB"

ii = fun (ch1, ch2, ii)
if (ch1 /= "AAAAA") print *,101
if (ch2 /= "BBBB") print *,102
if (ii /= 5) print*, 911
end subroutine
end
   
function fun(d1, d2, n)
  integer :: n
  character(len=n),value :: d1
  character(len=(ABS(n+2-2)-1)),value :: d2

   if (len(d1) /= 5) print *,201
   if (len(d2) /= 4) print *,202
   if (d1 /= "AAAAA") print *,203
   if (d2 /= "BBBB") print *,204
   
   d1  = "11111"
   d2  = "2222"
   fun = n
end function

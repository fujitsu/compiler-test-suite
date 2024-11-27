   implicit none

   integer :: n1, n2
   character, dimension(1:4) :: str1, str2

   n1 = 1234567890
   str1 = TRANSFER(n1,str1)
   write(1,"(z8.8,2x,4i4)") n1, ICHAR(str1)

   str2(1:4:1) = str1(4:1:-1)

   n2 = TRANSFER(str2,n2)
   write(1,"(z8.8,2x,4i4)") n2, ICHAR(str2)
   print *,'pass'
end

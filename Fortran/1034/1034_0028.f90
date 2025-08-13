 module m1
   contains
   subroutine ss11(i,j)
   entry      ss12(i,j)
   entry      ss13(i,j)
   entry      ss14(i,j)
   entry      ss15(i,j)
   integer i(j,j+1)
   namelist /xxx/i
   call sss1
   contains
   subroutine sss1
   write(13,xxx)
   end subroutine
   end subroutine
 end

  use m1
   integer i(2,3)
   i=reshape((/1,2,3,4,5,6/),(/2,3/))
   j=2
   call ss15(i,j)
  print *,'pass'
 end

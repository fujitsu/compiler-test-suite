 module m1
   contains
   subroutine ss11(i)
   entry      ss12(i)
   entry      ss13(i)
   entry      ss14(i)
   entry      ss15(i)
   integer i(2,3)
   namelist /xxx/i
   call sss1
   contains
   subroutine sss1
   write(12,xxx)
   end subroutine
   end subroutine
 end

  use m1
   integer i(2,3)
   i=reshape((/1,2,3,4,5,6/),(/2,3/))
   call ss15(i)
  print *,'pass'
 end

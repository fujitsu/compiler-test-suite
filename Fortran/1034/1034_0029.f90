 module m1
   contains
   subroutine ss11(i)
   entry      ss12(i)
   entry      ss13(i)
   entry      ss14(i)
   entry      ss15(i)
   character(len=*)::i
   namelist /xxx/i
   call sss1
   contains 
   subroutine sss1
   write(1,xxx)
   end subroutine
   end subroutine
 end

  use m1
   character*1 i
   i='1'
   call ss15(i)
  print *,'pass'
 end

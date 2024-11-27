 call s1
 print *,'pass'
 end
 module m1
   integer,parameter::k=1
   contains
   subroutine kk
  call k
  contains
   subroutine k
   end subroutine
   end subroutine
 end
subroutine s1
 use m1
 call kk
 if (k/=1)print *,'err'
 end

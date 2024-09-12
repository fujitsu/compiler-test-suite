 module m1
   contains
   subroutine s(p)
    procedure(),pointer,intent(in)::p
    if(abs(3.3) /= p(3.3)) print*, 101
   end subroutine
 end

 use m1
 intrinsic abs
 call s(abs)
 print *,'PASS'
 end

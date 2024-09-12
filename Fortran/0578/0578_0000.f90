 module m1
   contains
   subroutine s(p)
    procedure(),pointer,intent(in)::p
    call p()
   end subroutine
 end
 use m1
 external sub
 call s(sub)
 rewind 1
 read(1,*) n
 if (n/=9) print *,201
 print *,'PASS'
 end

 subroutine sub()
 integer::n=9
 write(1,*) n
 end subroutine

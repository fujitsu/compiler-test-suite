  call s1
  print *,'pass'
  end
  module m1
   integer,pointer::i1
   contains
   subroutine ss1(i2)
   integer,target::i2
   i1=>i2
   i1=10
   end subroutine
  end
  subroutine s1
  use m1
  integer,target ::j2
  j2=1
  call ss1(j2)
   if (i1/=10)write(6,*) "NG"
   if (j2/=10)write(6,*) "NG"
  end subroutine
  


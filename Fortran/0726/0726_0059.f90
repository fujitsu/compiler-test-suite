 call s1
 print *,'pass'
 end
  module m1
   namelist /a/ i
  end
  module m2
   contains
     subroutine xx
       use m1
       i=2
     end subroutine
  end
 subroutine s1
   use m2
   namelist /a/i
  call xx
  call yy
  rewind 4
  read(4,a)
  if (i/=2)write(6,*) "NG"
    contains
      subroutine yy
        use m1
        write(4,a)
        i=3
      end subroutine
 end

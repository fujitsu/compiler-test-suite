
   complex,pointer:: p2
   complex,target::c
    c=(2,4)
    p2=>c
   print*,p2%im
   call s01(p2%im)
   contains
   subroutine s01(r)
   real,pointer,intent(in)::r
   if ( r .ne. 4) print*,101
   print *,'pass'
   end subroutine
      end


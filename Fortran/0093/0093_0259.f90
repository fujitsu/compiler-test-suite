   complex,pointer:: p2
   allocate (p2)
   p2 = (3.45,6.78)
   call s01(p2%im)
   print *,'pass'
   contains
   subroutine s01(r)
   real,pointer,intent(in)::r
   if (r .ne. 6.78) print*,101
   end subroutine
   end


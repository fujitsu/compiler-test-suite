   complex,pointer:: p2 
   allocate (p2)
   p2 = (3,4)
   print*,fun(p2%im)
   print *,'pass'
   contains
   function fun(r) result(re)
   real,pointer,intent(in)::r
   re=r
   if ( re .ne. 4) print*,101
   end function
   end


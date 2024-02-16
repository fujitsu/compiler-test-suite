   interface
     function ifunc () result(irst)
     integer :: irst
     end function
   end interface

   procedure(ifunc), pointer :: pifunc , sub
   integer * 4 i,j
   real * 8 res
   pifunc => ifunc


   do i=1,100
     res = pifunc()
   enddo
   write(6,*) ' end '
   end
   function ifunc() result(irst)
   integer :: irst
   irst=1
   end function

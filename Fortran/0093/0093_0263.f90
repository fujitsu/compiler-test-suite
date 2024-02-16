   type ty
   complex,pointer:: p2(:)
   end type
   type(ty) :: obj
   complex,target::c(4)
   c=(2,4)
   c(3:4) = (4.56,6.78)
   obj%p2=>c
   call s01(obj%p2(3:4)%im)
   contains
   subroutine s01(r)
   real,pointer,intent(in)::r(:)
   if (any( r .ne. 6.78)) print*,101
   if (size (r) .ne. 2) print*,102
   print *,'pass'
   end subroutine
      end


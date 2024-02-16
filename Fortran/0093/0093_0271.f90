
   type ty
   complex,pointer:: p2
   end type
   type(ty) :: obj
   complex,target::c(2)
    c=(2,4)
    obj%p2=>c(2)
    print*,obj%p2%im
   call s01(obj%p2%im)
   contains
   subroutine s01(r)
   real,pointer,intent(in)::r
   if ( r .ne. 4) print*,101
   print *,'pass'
   end subroutine
      end


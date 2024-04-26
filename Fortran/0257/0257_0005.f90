                   type ty
                   integer,pointer :: ptr(:)
                   end type
                   type(ty)::obj
                   obj%ptr=>NULL()
                   call sub(obj)
                   print*,"Pass"
                  contains
                   subroutine sub(dmy)
                    type(ty),optional:: dmy
                   if(present(dmy))then
                     call sub2(dmy%ptr)
                   endif
                 end subroutine
                 subroutine sub2(p)
                  integer,contiguous,optional::p(:)
                   if(present(p))then
                   print*,"101"
                   endif
                end subroutine
                 end

        1                   type ty
        2                     integer,pointer :: ptr(:)=> null()
        3                   end type
        4                   type(ty)::obj
        5                   call sub(obj)
        6                   print*,"pass"
        7                   contains
        8                   subroutine sub(dmy)
        9                     type(ty) :: dmy
                              call sub2(dmy%ptr)
                              i   =if  (dmy%ptr)
if (i/=1) print *,801
       11                  end subroutine
                         subroutine sub2(p)
                          integer,contiguous,optional::p(:)
                           if(present(p))then
                          print*,"101"
                           endif
                        end subroutine
                         function   if  (p)
                          integer,contiguous,optional::p(:)
                           if(present(p))then
                          print*,"101"
                           endif
                           if=1
                        end 
       18                  end

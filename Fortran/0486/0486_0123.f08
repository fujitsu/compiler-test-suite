                           type ty
                             integer,allocatable :: ptr(:)
                           end type
                           type(ty)::obj
                           call sub(obj)
                           print*,"pass"
                           contains
                           subroutine sub(dmy)
                             type(ty) :: dmy
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
                         end

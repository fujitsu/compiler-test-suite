                           type ty
                             integer,pointer :: ptr(:)=> null()
                           end type
                           type(ty)::obj
                           call sub(obj,obj%ptr,null())
                           print*,"pass"
                           contains
                           subroutine sub(dmy,p,pp,sh)
                             integer,pointer :: p(:),pp(:)
                             integer,optional :: sh(:)
                             type(ty) :: dmy
                              call sub2(dmy%ptr)
                              i   =if  (dmy%ptr)
if (i/=1) print *,801
                              call sub2(p)
                              i   =if  (p)
if (i/=1) print *,802
                              call sub2(pp)
                              i   =if  (pp)
if (i/=1) print *,803
                              call sub2(sh)
                              i   =if  (sh)
if (i/=1) print *,804
                         end subroutine
                         subroutine sub2(p)
                          integer,optional::p(*)
                           if(present(p))then
                          print*,"101"
                           endif
                        end subroutine
                         function   if  (p)
                          integer,optional::p(*)
                           if(present(p))then
                          print*,"101"
                           endif
                           if=1
                        end 
                        end

        1                    type ty
        2                          integer,pointer :: ptr(:)
        3                    end type
        4                    type(ty)::obj
        5                    call sub(obj)
        6                    print*,"pass"
        7                    contains
        8                    subroutine sub(dmy)
        9                       type(ty) :: dmy
       10                       dmy%ptr=>NULL()
       11                       call sub2(dmy%ptr)
       12                    end subroutine
       13                    subroutine sub2(p)
       14                       integer,contiguous,optional::p(:)
       16                       if(present(p))then
       17                       print*,"101"
       18                       endif
       19                    end subroutine
       20                    end

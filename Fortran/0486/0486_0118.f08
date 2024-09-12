        1           type ty
        2             integer,pointer :: ptr(:)
        3           end type
        4           type(ty)::obj
        5           allocate(obj%ptr(9))
        6           obj%ptr = [1,2,3,4,5,6,7,8,9]
        7           call sub(obj%ptr)
        8           if(any(obj%ptr.ne.[11,12,13,14,15,16,17,18,19]))print*,"101"
        9           print*,"pass"
       10          contains
       11          subroutine sub(dmy)
       12           integer,contiguous:: dmy(:)
       13           if(any(dmy.ne.[1,2,3,4,5,6,7,8,9])) print*,"106"
       14           if(loc(dmy).ne.loc(obj%ptr))print*,"101"
       15           dmy = dmy + 10
       16          end subroutine
       17          end

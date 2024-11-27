   1         type ty
        2           class(*),allocatable:: cptr
        3         end type
        4         type(ty)::obj
        5          allocate(obj%cptr,source=10)
        6          select type (asc=>obj%cptr)
        7            class default
        8               print*,"102"
        9            type is (integer)
       10              if(asc.ne.10)print*,"101"
       11            end select
   print *,'pass'
       12         end


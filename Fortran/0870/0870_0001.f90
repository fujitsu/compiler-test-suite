          type ty
                   class(*),allocatable:: cptr
                 end type
                 type(ty)::obj
                  allocate(obj%cptr,source=10)
                 select type (asc=>obj%cptr)
                    class default
                       print*,"102"
                   type is (integer)
                     if(asc.ne.10)print*,"101"
                   end select
     print *,'pass'
                end

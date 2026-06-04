         subroutine s1
         type base
           integer::x
         end type
         type,extends(base)::ext
           integer::xx
         end type
         type ty
            class(*   ), allocatable :: mem
          end type
          class(* ),allocatable::obj
          allocate(ty::obj)
       select type(z=>obj)
         type is(ty)
          allocate(ext::z  %mem)
          select type(p=>obj)
           type is(ty)
                  select type(qq => p%mem)
                    type is (ext)
                      qq%x=-1
                      qq%xx=-2
                      if (allocated(p%mem)) then
                          deallocate(p%mem)
                      endif
                      allocate(base::p%mem)
                      select type(qq=>p%mem)
                        type is (base)
                          qq%x =10
                          if (allocated(p%mem)) deallocate(p%mem)
                         type is (ext)
                          print*,"801"
                      end select
                     type is (base)
                     print*,"802"
                  end select
                  end select
           end select
        end
        print *,'sngg764p : pass'
        call s1
        end



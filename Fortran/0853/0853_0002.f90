 type ty
          class(*),pointer     :: elements(:)
   end type
           character(3), pointer :: values(:)
         type(ty) :: q
           allocate(q%elements(3),source='123')
           allocate(character(3)::values(3))

          select type(qq => q%elements)
           type is (character(*))
              call sub(qq)
           class default
              print*,"NG"
          end select
          print*,"pass"
contains
  subroutine sub(x)
    character(*)::x(:)
              if (any(x/='123'))print *,101
              if (size (x)/=3)print *,102
        end
        end

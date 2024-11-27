 type ty
          class(*),pointer     :: elements(:)
   end type
           character(:), pointer :: values(:)
         type(ty) :: q
           allocate(q%elements(3),source='123')
           allocate(character(3)::values(3))

          select type(qq => q%elements)
           type is (character(*))
              values = [qq]
           class default
              print*,"NG"
          end select
              if (any(values/='123'))print *,101
              if (size (values)/=3)print *,102
          print*,"pass"
        end

subroutine sub

  type ty
    class(*),pointer     :: e(:)
  end type
  type(ty) :: q
  character(3) :: v(2)

  select type(qq => q%e)
    type is (character(*))
      v = qq
  end select

end
print *,'pass'
  end

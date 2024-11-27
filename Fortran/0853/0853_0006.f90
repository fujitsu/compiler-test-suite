subroutine sub

type ty
    class(*),pointer     :: e(:)
  end type
  type(ty) :: q(3)

allocate(character(3)::q(3)%e(3))
  select type(qq => q(3)%e)
    type is (character(*))
      qq='123'
  end select

  select type(qq => q(3)%e)      
    type is (character(*))   
      if (any(qq/='123')) print *,1001       
  end select
end
call sub
print *,'pass'
  end

subroutine sub

type ty
    class(*),pointer     :: e(:)
  end type
  type(ty) :: q

  select type(qq => q%e)
    type is (character(*))
      qq='123'
  end select

  select type(qq => q%e)      
    type is (character(*))   
      if (any(qq/='123')) print *,1001       
  end select
end
print *,'pass'
  end

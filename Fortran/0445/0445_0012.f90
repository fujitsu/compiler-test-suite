subroutine  foo   
  type ty
     integer :: var1
     procedure(t), pointer,nopass :: p
     integer :: var2
  end type 
type(ty):: a
  type ty2
     integer :: var1
     procedure(t2), pointer,nopass :: p
     integer :: var2
  end type 
type(ty2):: b
if (loc(a%var2)-loc(a%var1)/=16) print *,201
if (loc(b%var2)-loc(b%var1)/=16) print *,202

contains 
  function t() result(r)
      integer::r(2)
      r=0
  end function 
  subroutine   t2
  end subroutine

end 

call foo
print *,'pass'
end

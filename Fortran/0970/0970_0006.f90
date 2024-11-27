interface
 subroutine xxx(a)
  class(*):: a
 end subroutine
 function yyy() result(rst)
  class(*), pointer :: rst
 end function
end interface

class(*), pointer:: a

call xxx(a)
a => yyy()

end

subroutine xxx(a)
 class(*):: a
end subroutine

function yyy() result(rst)
 class(*), pointer :: rst
end function

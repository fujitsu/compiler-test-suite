module xxxf
contains

  subroutine sub
  end subroutine
  function kmr_fixfun2() result(zz)
entry kmr_fixfun3() result(zz)
entry kmr_fixfun() result(zz)

   procedure(sub),pointer:: zz
       zz => null()
  end function 

  integer function foo() result(zz)
   procedure(sub),pointer:: fp

    fp => kmr_fixfun()

    zz = 0
  end function foo

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end

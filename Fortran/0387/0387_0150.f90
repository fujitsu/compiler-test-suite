module mod01
 interface
  function mifunc01() result(mirst01) bind(c)
   integer :: mirst01
  end function
 end interface
 procedure(mifunc01), bind(c, name = 'ppp') :: pmifunc01
end module

use mod01, pmif1 => pmifunc01
if (pmif1().ne.1) print *,'error'

print *,'pass'

end

function pmifunc01() result(pmirst01) bind(c, name = 'ppp')
 integer :: pmirst01
 pmirst01 = 1
end function
module n1
private::base
private
end
module n2
use n1
private::base
private
end
module n3
use n2
private::base
private
end
module n4
use n3
private::base
private
end
module n5
use n4
private::base
private
end
module n6
use n5
integer::base=1
private
public::sub1
  interface
     module subroutine sub1()
     end subroutine
  end interface
end 
submodule (n6) m1sub
contains
  module subroutine sub1()
implicit none
if (base/=1)print *,1001
  end subroutine sub1
end submodule m1sub

use n6
call sub1
print *,'sngg029n : pass'
end

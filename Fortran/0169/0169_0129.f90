module m
  integer,parameter,private :: i=5,j(2)=[3,4]
  interface 
    module subroutine s
    end subroutine
  end interface
end

submodule(m)smod
  integer,parameter ::i(10)=[1,2,3,4,5,6,7,8,9,0]
contains
  module subroutine s
    if (any(i/=[1,2,3,4,5,6,7,8,9,0])) print *,1
    if (any(j/=[3,4])) print *,2
    print *,'pass'
  end subroutine
end

use m
call s
end

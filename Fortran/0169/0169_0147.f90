module m
 interface
  module subroutine msub
  end subroutine
 end interface
end

submodule(m)smod
contains
 module subroutine msub
  print *,'pass'
 end subroutine
end

use m,hoge=>msub
call hoge
end

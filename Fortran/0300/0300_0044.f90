module mdef
  type TAG
    integer,dimension(1:-1):: a
  end type TAG
end module

use mdef
  type(TAG) fun,aa
  aa = fun()
  print *,'pass'
end

function fun()
  use mdef
  type(TAG) fun,r
  fun=r
end function

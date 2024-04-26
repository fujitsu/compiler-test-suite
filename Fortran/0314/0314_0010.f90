module mod1
contains
  subroutine sub1
  integer i1
  print *,'sub1'
  end subroutine
end

module mod3
use mod2
contains
  subroutine sub3
  integer i3
  call sub2
  print *,'sub3'
  end subroutine
end

module mod2
use mod1
contains
  subroutine sub2
  integer i2
  call sub1
  print *,'sub2'
  end subroutine
end

call sub4
contains
  subroutine sub4
  use mod3
  integer i4
  call sub3
  end subroutine
end

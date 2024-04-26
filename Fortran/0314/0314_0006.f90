use mod1
use mod12
use mod123
use mod1234
use mod12345
use mod123456
use mod1234567
use mod12345678
use mod123456789
use mod1234567890
call sub1
call sub12
call sub123
call sub1234
call sub12345
call sub123456
call sub1234567
call sub12345678
call sub123456789
call sub1234567890

end
module mod1
use mod12
contains
  subroutine sub1
  print *,'sub1'
  end subroutine
end module

module mod12
use mod123
contains
  subroutine sub12
  print *,'sub12'
  end subroutine
end module

module mod123
use mod1234
contains
  subroutine sub123
  print *,'sub123'
  end subroutine
end module

module mod1234
use mod12345
contains
  subroutine sub1234
  print *,'sub1234'
  end subroutine
end module

module mod12345
use mod123456
contains
  subroutine sub12345
  print *,'sub12345'
  end subroutine
end module

module mod123456
use mod1234567
contains
  subroutine sub123456
  print *,'sub123456'
  end subroutine
end module

module mod1234567
use mod12345678
contains
  subroutine sub1234567
  print *,'sub1234567'
  end subroutine
end module

module mod12345678
use mod123456789
contains
  subroutine sub12345678
  print *,'sub12345678'
  end subroutine
end module

module mod123456789
use mod1234567890
contains
  subroutine sub123456789
  print *,'sub123456789'
  end subroutine
end module

module mod1234567890
contains
  subroutine sub1234567890
  print *,'sub1234567890'
  end subroutine
end module

module mod01
contains
  subroutine mod01_sub
  print *,'call mod01_sub'
  end subroutine
end

module mod02
contains
  subroutine mod02_sub
  print *,'call mod02_sub'
  end subroutine
end

module mod03
contains
  subroutine mod03_sub
  print *,'call mod03_sub'
  end subroutine
end

module mod04
contains
  subroutine mod04_sub
  print *,'call mod04_sub'
  end subroutine
end

module mod05
contains
  subroutine mod05_sub
  print *,'call mod05_sub'
  end subroutine
end

module mod06
contains
  subroutine mod06_sub
  print *,'call mod06_sub'
  end subroutine
end

module mod07
contains
  subroutine mod07_sub
  print *,'call mod07_sub'
  end subroutine
end

module mod08
contains
  subroutine mod08_sub
  print *,'call mod08_sub'
  end subroutine
end

module mod09
contains
  subroutine mod09_sub
  print *,'call mod09_sub'
  end subroutine
end

module mod10
contains
  subroutine mod10_sub
  print *,'call mod10_sub'
  end subroutine
end

module mod
use mod01
use mod02
use mod03
use mod04
use mod05
use mod06
use mod07
use mod08
use mod09
use mod10
contains
  subroutine mod_sub
  call mod01_sub
  call mod02_sub
  call mod03_sub
  call mod04_sub
  call mod05_sub
  call mod06_sub
  call mod07_sub
  call mod08_sub
  call mod09_sub
  call mod10_sub
  end subroutine
end

use mod
call mod_sub
end

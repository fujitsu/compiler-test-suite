subroutine sub01() bind(c, name = 'AAA')
end subroutine

module mod01
 interface
  subroutine misub01() bind(c)
  end subroutine
 end interface
 procedure(misub01), bind(c, name = 'AAA') :: sub01
end module

use mod01, ms1 => sub01

call ms1()

print *,'pass'

end

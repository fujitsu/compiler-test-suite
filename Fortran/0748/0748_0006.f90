module mod
  type x
    integer:: x1=1
  end type
  type(x):: v
end

use mod

print *,v
end

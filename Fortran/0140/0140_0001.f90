module mod
integer:: var
integer,parameter::var1=1
dimension a(100)
contains
subroutine sub
a=1
end subroutine
end module

use mod
integer:: var2
integer,parameter::var3=2
a=1
a=2
a=3
print *,'pass'
end

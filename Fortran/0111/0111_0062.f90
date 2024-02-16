module mod
type ty0
 integer :: ip
end type
type(ty0),pointer :: typm
type(ty0),target  :: tytm
contains
subroutine msub()
typm=>tytm
end subroutine
end

use mod
type ty1
 integer :: ip
end type
type(ty1),pointer :: typ
type(ty1),target  :: tyt
call sub()
call msub()
call sub1()
call sub2()
call sub3()
print *,"pass"
contains
subroutine sub()
typ=>tyt
end subroutine
end


module mod2
type ty0
 integer :: ip
end type
type(ty0),pointer :: typm
contains
subroutine mod2_sub1()
call mod2_sub2()
call mod2_sub3()
call mod2_sub4()
end subroutine
subroutine mod2_sub2()
type(ty0),pointer :: taa
end subroutine
subroutine mod2_sub3()
call isub()
contains
subroutine isub()
type(ty0),pointer :: taa
end subroutine
end subroutine
subroutine mod2_sub4()
call isub()
contains
subroutine isub()
end subroutine
end subroutine
end

subroutine sub1()
use mod2
call mod2_sub1()
end

subroutine sub2()
type ty0
 integer :: ip
end type
type(ty0),pointer :: typm
end

module mod3
type ty0
 integer,pointer :: ip
end type
type(ty0) :: typm
contains
subroutine mod3_sub1()
call mod3_sub2()
call mod3_sub3()
call mod3_sub4()
end subroutine
subroutine mod3_sub2()
type(ty0) :: taa
end subroutine
subroutine mod3_sub3()
call isub()
contains
subroutine isub()
type(ty0) :: taa
end subroutine
end subroutine
subroutine mod3_sub4()
call isub()
contains
subroutine isub()
end subroutine
end subroutine
end

subroutine sub3()
use mod3
call mod3_sub1()
end

call test01()
call test02()
call test03()
print *,'pass'
end

module mod01
integer i,j
contains
subroutine mod01sub(kk)
1 i=10
return 
entry mod01ent01(kk)
j=11
entry mod01ent02(kk)
if (i.eq.3) goto 1
kk=kk+j
end subroutine
end module

subroutine test01()
use mod01
i=3
ka=1
call mod01ent01(ka)
if (i.ne.10) print *,'ng'
if (j.ne.11) print *,'ng'
call mod01ent01(ka)
call mod01ent01(ka)
call mod01ent02(ka)
call mod01ent02(ka)
if(ka.ne.45) print *,'ng'
end subroutine

module mod02
integer i,j
private :: i
contains
subroutine mod02sub(kk)
1 i=10
return 
entry mod02ent01(kk)
j=11
entry mod02ent02(kk)
if (i.eq.3) goto 1
kk=kk+j
end subroutine
subroutine mod02subxx(ka)
i=3
ka=1
call mod02ent01(ka)
if (i.ne.10) print *,'ng'
if (j.ne.11) print *,'ng'
call mod02ent01(ka)
call mod02ent01(ka)
call mod02ent02(ka)
call mod02ent02(ka)
if(ka.ne.45) print *,'ng'
end subroutine
end module

subroutine test02()
use mod02
call mod02subxx(ka)
end subroutine

module mod03
integer i,j
contains
subroutine mod03sub(kk)
1 i=10
return 
entry mod03ent01(kk)
j=11
entry mod03ent02(kk)
if (i.eq.3) goto 1
kk=kk+j
end subroutine
subroutine mod03subxx(ka)
i=3
ka=1
call mod03ent01(ka)
if (i.ne.10) print *,'ng'
if (j.ne.11) print *,'ng'
call mod03ent01(ka)
call mod03ent01(ka)
call mod03ent02(ka)
call mod03ent02(ka)
if(ka.ne.45) print *,'ng'
end subroutine
end module

subroutine test03()
use mod03
call mod03subxx(ka)
end subroutine



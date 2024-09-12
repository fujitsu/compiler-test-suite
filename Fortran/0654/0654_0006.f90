
call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

module mod01
integer,parameter :: kk=1
contains
subroutine sub(dd,add,bdd,cdd)
dimension :: dd(1,2,2),add(kk,2,2)
dimension :: cdd(1,KK:2,2)
dimension :: bdd(1,2,KK:2)
character*(kk+1) dd  
character*(kk+1) add 
character*(kk+1) cdd
character*(kk+1) bdd
dd='a'
add='a'
bdd='a'
cdd='a'
add=add
bdd=bdd
cdd=cdd
end subroutine
end
subroutine test01()
use mod01
character(2) :: a1(1,2,2) , a2(1,2,2) , a3(1,2,2) , a4(1,2,2)
call sub(a1,a2,a3,a4)
end

module mod02
integer,parameter :: kk=1
integer,parameter :: pp=2
contains
subroutine sub(dd,add,bdd,cdd)
dimension :: dd(1,2,2),add(kk,2,2)
dimension :: cdd(1,KK:2,2)
dimension :: bdd(1,2,KK:2)
character*(pp) dd
character*(pp) add
character*(pp) cdd
character*(pp) bdd
dd='a'
add='a'
bdd='a'
cdd='a'
add=add
bdd=bdd
cdd=cdd
end subroutine
end
subroutine test02()
use mod02
character(2) :: a1(1,2,2) , a2(1,2,2) , a3(1,2,2) , a4(1,2,2)
call sub(a1,a2,a3,a4)
end

module mod03
integer,parameter :: kk=1
integer,parameter :: pp=2
contains
subroutine sub(dd,add,bdd,cdd)
character*(pp+0) dd
character*(pp+0) add
character*(pp+0) cdd
character*(pp+0) bdd
dimension :: dd(1,2,2),add(kk,2,2)
dimension :: cdd(1,KK:2,2)
dimension :: bdd(1,2,KK:2)
dd='a'
add='a'
bdd='a'
cdd='a'
add=add
bdd=bdd
cdd=cdd
end subroutine
end
subroutine test03()
use mod03
character(2) :: a1(1,2,2) , a2(1,2,2) , a3(1,2,2) , a4(1,2,2)
call sub(a1,a2,a3,a4)
end

module mod04
integer,parameter :: kk=1
integer,parameter :: pp=2
contains
subroutine sub()
dimension :: dd(1,2,2),add(kk,2,2)
dimension :: cdd(1,KK:2,2)
dimension :: bdd(1,2,KK:2)
character*(pp+0) dd
character*(pp+0) add
character*(pp+0) cdd
character*(pp+0) bdd
dd='a'
add='a'
bdd='a'
cdd='a'
dd=dd
add=add
bdd=bdd
cdd=cdd
end subroutine
end
subroutine test04()
use mod04
call sub()
end


call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
print *,'pass'
end

module mod01
integer ,pointer :: ip
integer,target   :: it,iu
contains
subroutine msub14(ipp)
integer ,pointer :: ipp
entry msub01(ipp)
iu=1
ip=>iu
i=kind(ipp)
end subroutine
end
subroutine sub01()
use mod01
ip=>it
it=10
call msub01(ip)
if (ip.ne.1) write(6,*) "NG"
end subroutine

module mod02
integer ,pointer :: ip
integer,target   :: it,iu
contains
subroutine msub()
ip=>it
it=10
call msub02(ip)
if (ip.ne.1) write(6,*) "NG"
end subroutine
subroutine msub02(ipp)
integer ,pointer :: ipp
iu=1
ip=>iu
i=kind(ipp)
end subroutine
end
subroutine sub02()
use mod02
call msub()
end subroutine

module mod03
integer ,pointer :: ip
integer,target   :: it,iu
contains
subroutine msub()
ip=>it
it=10
call msub03(ip)
if (ip.ne.1) write(6,*) "NG"
end subroutine
subroutine msub00(ipp)
integer ,pointer :: ipp
entry msub03(ipp)
iu=1
ip=>iu
i=kind(ipp)
end subroutine
end
subroutine sub03()
use mod03
call msub()
end subroutine

module mod04
integer ,pointer :: ip
integer,target   :: it,iu
contains
subroutine msub()
ip=>it
it=10
call msub04(ip)
if (ip.ne.1) write(6,*) "NG"
contains
subroutine msub04(ipp)
integer ,pointer :: ipp
iu=1
ip=>iu
i=kind(ipp)
end subroutine
end subroutine
end
subroutine sub04()
use mod04
call msub()
end subroutine

module mod05
integer,pointer :: ip
integer,target  :: it,iu
end
subroutine sub05()
use mod05
ip=>it
it=10
call msub05(ip)
if (ip.ne.1) write(6,*) "NG"
contains
subroutine msub05(ipp)
integer ,pointer :: ipp
iu=1
ip=>iu
i=kind(ipp)
end subroutine
end subroutine

module mod06
integer,pointer :: ip
integer,target  :: it,iu
end
subroutine sub06()
use mod06
interface
subroutine msub06(ipp)
use mod06
integer ,pointer :: ipp
end subroutine
end interface
ip=>it
it=10
call msub06(ip)
if (ip.ne.1) write(6,*) "NG"
end subroutine
subroutine msub06(ipp)
use mod06
integer ,pointer :: ipp
iu=1
ip=>iu
i=kind(ipp)
end subroutine

module mod07
integer,pointer :: ip
integer,target  :: it,iu
end
subroutine sub07()
use mod07
interface
subroutine msub07(ipp)
use mod07
integer ,pointer :: ipp
end subroutine
end interface
ip=>it
it=10
call msub07(ip)
if (ip.ne.1) write(6,*) "NG"
end subroutine
subroutine msub0a(ipp)
use mod07
integer ,pointer :: ipp
entry msub07(ipp)
iu=1
ip=>iu
i=kind(ipp)
end subroutine

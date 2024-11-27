call sub01()
call sub02()
call sub03()
print *,'pass'
end

module mod03
integer,pointer :: ip,pp
integer,target  :: it,tt
contains
subroutine msub03(ia)
integer,pointer :: ia
tt=3
ip=>tt
i=kind(ia)
end subroutine
end
subroutine sub03()
use mod03
it=100
ip=>it
pp=>ip
call msub03(pp)
if (pp.ne.100) write(6,*) "NG"
end

module mod02
integer,pointer :: ip,pp
integer,target  :: it,tt
contains
subroutine msub02(ia)
integer,pointer :: ia
tt=3
pp=>tt
i=kind(ia)
end subroutine
end
subroutine sub02()
use mod02
it=100
ip=>it
pp=>ip
call msub02(ip)
if (pp.ne.3) write(6,*) "NG"
end

module mod01
integer,pointer :: ip
integer,target  :: it,tt
contains
subroutine msub01(ia)
integer,pointer :: ia
tt=3
ip=>tt
i=kind(ia)
end subroutine
end
subroutine sub01()
use mod01
it=100
ip=>it
call msub01(ip)
if (ip.ne.3) write(6,*) "NG"
end

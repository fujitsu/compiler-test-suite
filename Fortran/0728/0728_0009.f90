call sub01()
call sub02()
print *,'pass'
end

module mod02
integer,pointer :: ip,pp
integer,target  :: it,tt
contains
subroutine msub02(ia)
integer,pointer,optional :: ia
tt=3
pp=>tt
if (present(ia))i=kind(ia)
end subroutine
end
subroutine sub02()
use mod02
it=100
ip=>it
pp=>it
call msub02(ip)
if (pp.ne.3) write(6,*) "NG"
end

module mod01
integer,pointer :: ip
integer,target  :: it,tt
contains
subroutine msub01(ia)
integer,pointer,optional :: ia
tt=3
ip=>tt
if (present(ia))i=kind(ia)
end subroutine
end
subroutine sub01()
use mod01
it=100
ip=>it
call msub01(ip)
if (ip.ne.3) write(6,*) "NG"
it=100
ip=>it
call msub01()
if (ip.ne.3) write(6,*) "NG"
end

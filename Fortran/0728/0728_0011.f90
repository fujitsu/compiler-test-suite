call sub01()
call sub02()
print *,'pass'
end

module mod01
integer,pointer :: ip1
integer,target  :: it1,it2
contains
subroutine msub(ipp)
integer,pointer,optional :: ipp
it2=11
i=kind(ipp)
ip1=>it2
end subroutine
end 
subroutine sub01()
use mod01
use mod01,ip2=>ip1,ip3=>ip1
ip2=>it1
it1=100
call msub(ip2)
if (ip3.ne.11) write(6,*) "NG"
if (ip2.ne.11) write(6,*) "NG"
end

module mod02
use mod01
use mod01,ip2=>ip1,ip3=>ip1
integer,pointer :: ip1
contains
subroutine sub(ipp)
integer,pointer,optional :: ipp
it2=11
i=kind(ipp)
ip3=>it2
end subroutine
end 
subroutine sub02()
use mod02
ip2=>it1
it1=100
call sub(ip2)
if (ip3.ne.11) write(6,*) "NG"
if (ip2.ne.11) write(6,*) "NG"
end

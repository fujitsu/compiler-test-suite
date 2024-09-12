module mod1
type ty10(ii)
 integer,kind::ii=30
 integer :: array(ii)=(/(iii,iii=1,ii)/)
end type
TYPE(ty10(10)) ::ca1
TYPE(ty10(20)) ::ca2
end
module mod
use mod1
TYPE(ty10(30)) ::ca3
TYPE(ty10(40)) ::ca4
interface
 subroutine sub2(ca)
 use mod1
 TYPE(ty10(30)) ::ca
 end subroutine
 end interface
end
use mod
TYPE(ty10(30)) :: obj
integer :: arr(30) = [(iii,iii=1,30)]
if(any(obj%array .ne. arr)) print*,"121"
if(same_type_as(obj,ca3) .and. size(ca4%array) .eq. size(obj%array)+10 .and. &
        ca1%ii + ca2%ii .eq. obj%ii) then
print*,'pass'
else
print*,'FAIL'
endif

call sub2(obj)
end
subroutine sub2(ca)
use mod1
TYPE(ty10(30)) ::ca
if(ca%ii .EQ. size(ca%array) .and. lbound(ca%array,1)+ ca%array(5) .eq. ca%array(6))then
else
print*,'FAIL'
endif
end subroutine

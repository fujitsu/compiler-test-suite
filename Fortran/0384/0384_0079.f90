module mod
character(kind=1,len=:),pointer :: ip
end 

use mod
call test01()
print *,"pass"
end

subroutine test01()
character(kind=1,len=:),pointer :: ip
character(kind=1,len=:),pointer :: ipa(:)
character(kind=1,len=:),allocatable :: ap
character(kind=1,len=:),allocatable :: apa(:)
call sub(ip,ipa,ap,apa)
contains
subroutine sub(qip,qipa,qap,qapa)
character(kind=1,len=:),pointer :: qip
character(kind=1,len=:),pointer :: qipa(:)
character(kind=1,len=:),allocatable :: qap
character(kind=1,len=:),allocatable :: qapa(:)
end subroutine
end subroutine

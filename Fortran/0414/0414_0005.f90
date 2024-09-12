module mod
  type ty10
    integer,allocatable :: array(:)
  end type
  type ,extends(ty10)::ty1
    character(len=3),allocatable           :: chk( : )
    type(ty10) :: str
  end type
  TYPE(ty1) :: aaa
end
subroutine alloc()
use mod
allocate(aaa%chk(3))
allocate(aaa%array(20))
allocate(aaa%str%array(30))
end
subroutine dealoc()
use mod
deallocate(aaa%chk)
deallocate(aaa%array)
deallocate(aaa%str%array)
end
subroutine m_sub()
use mod
call alloc()
aaa%array=(/(i,i=1,20)/)
aaa%chk=(/'abc','xxx','zzz'/)
aaa%str%array=(/(i*10,i=1,30)/)
end subroutine
use mod
call m_sub()
call u_sub()
call dealoc()
print *,'pass'
end
subroutine u_sub()
use mod
if (aaa%array(1).ne.1) print *,'err1'
if (aaa%array(20).ne.20) print *,'err2'
if (aaa%chk(1).ne.'abc') print *,'err3'
if (aaa%chk(2).ne.'xxx') print *,'err4'
if (aaa%chk(3).ne.'zzz') print *,'err5'
if (aaa%str%array(1).ne.10) print *,'err6'
if (aaa%str%array(20).ne.200) print *,'err7'
if (aaa%str%array(30).ne.300) print *,'err8'
end subroutine

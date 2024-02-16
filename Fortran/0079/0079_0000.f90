module mod
contains
subroutine m_sub1()
call m_sub2()
end subroutine
subroutine m_sub2()
print *,'pass'
end subroutine
end
use mod
call m_sub1()
end

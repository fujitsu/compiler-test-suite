call test01()
print *,'pass' 
end

module mod1
contains
 subroutine m_sub()
 entry m_sub_e1()
 call m_sub2(m_sub2,0)
 call m_sub2_e1(m_sub2_e1,0)
 end subroutine
 recursive subroutine m_sub2(ext,j)
 external ext
 if (j.eq.0) call ext(ext,1)
 return
 entry m_sub2_e1(ext,j)
 if (j.eq.0) call ext(ext,1)
 return
 end subroutine
end
subroutine test01()
use mod1
call m_sub()
end

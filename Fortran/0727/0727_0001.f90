call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
intrinsic cpu_time
real(kind=4) r4
r4=0.0_4
call cpu_time(time=r4)
end

module mod02
intrinsic cpu_time
end
subroutine test02()
use mod02          
real(kind=4) r4
r4=0.0_4
call cpu_time(time=r4)
end

module mod03
intrinsic cpu_time
contains
subroutine m_sub()
real(kind=4) r4
r4=0.0_4
call cpU_time(time=r4)
end subroutine
end
subroutine test03()
use mod03,time=>cpu_time         
real(kind=4) r4
call m_sub()
r4=0.0_4
call time(time=r4)
end


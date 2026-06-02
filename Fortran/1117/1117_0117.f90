integer::ia(10),ib(10),ic(10),id(10)
call test01()
call test02(ia,ib,ic,id)
print *,'pass'
end 
block data 
common /com01/i,ia(10),ic
character(len=10) ic
data i /10/
data ia/10*10/
!$omp threadprivate(/com01/)
end
subroutine test01()
common /com01/i,ia(10),ic
character(len=10) ic
!$omp threadprivate(/com01/)
integer a01(int(i))
integer a02(ia(1))
integer a03(int(ia(i)))
integer a04(len(ic))     

!$omp parallel
if (ubound(a01,1).ne.10)print *,"fail"
if (ubound(a02,1).ne.10)print *,"fail"
if (ubound(a03,1).ne.10)print *,"fail"
if (ubound(a04,1).ne.10)print *,"fail"
!$omp end parallel
end

subroutine test02(a01,a02,a03,a04)
common /com01/i,ia(10),ic
character(len=10) ic
!$omp threadprivate(/com01/)
integer a01(int(i))
integer a02(ia(1))
integer a03(int(ia(i)))
integer a04(len(ic))     

!$omp parallel
if (ubound(a01,1).ne.10)print *,"fail"
if (ubound(a02,1).ne.10)print *,"fail"
if (ubound(a03,1).ne.10)print *,"fail"
if (ubound(a04,1).ne.10)print *,"fail"
!$omp end parallel
end

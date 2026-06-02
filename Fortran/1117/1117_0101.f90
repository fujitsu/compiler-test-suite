call test01()
call test02()
call test03()
call test04()
call test05()
print *,'pass'
end

block data ba
common /com01/ i01,j01
data i01,j01 /1,2/
common /com02/ i02,j02
data i02,j02 /10,20/
common /com03/ i03,j03
data i03,j03 /100,200/
!$omp threadprivate(/com01/,/com02/,/com03/)
end

subroutine test01()
common /com01/ i01,j01
!$omp threadprivate(/com01/)
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel copyin(/com01/)
      if (i01.ne.1) print *,"fail"
      if (j01.ne.2) print *,"fail"
!$omp endparallel
      end

subroutine test02()
common /com01/ i01,j01
common /com02/ i02,j02
common /com03/ i03,j03
!$omp threadprivate(/com01/,/com02/,/com03/)
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel copyin(/com02/)
      if (i02.ne.10) print *,"fail"
      if (j02.ne.20) print *,"fail"
!$omp endparallel
      end
subroutine test03()
common /com01/ i01,j01
common /com02/ i02,j02
common /com03/ i03,j03
!$omp threadprivate(/com01/,/com02/,/com03/)
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel copyin(/com01/)
      if (i01.ne.1) print *,"fail"
      if (j01.ne.2) print *,"fail"
!$omp endparallel
      end
subroutine test04()
common /com01/ i01,j01
common /com02/ i02,j02
common /com03/ i03,j03
!$omp threadprivate(/com01/,/com02/,/com03/)
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel copyin(/com03/)
      if (i03.ne.100) print *,"fail"
      if (j03.ne.200) print *,"fail"
!$omp endparallel
      end
subroutine test05()
common /com01/ i01,j01
common /com02/ i02,j02
common /com03/ i03,j03
!$omp threadprivate(/com01/,/com02/,/com03/)
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel copyin(/com02/,/com01/)
      if (i01.ne.1) print *,"fail"
      if (j01.ne.2) print *,"fail"
      if (i02.ne.10) print *,"fail"
      if (j02.ne.20) print *,"fail"
!$omp endparallel
      end

call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
print *,'pass'
end

subroutine test06()
integer(kind=1) :: i01,j01
integer(kind=2) :: i02,j02
integer(kind=4) :: i03,j03
integer(kind=8) :: i04,j04
common /com33/ iii,i04,ia(3),i03,ii,i02,i01
common /com34/ j04,ij(100),j03,j02,ik,j01
!$omp threadprivate(/com33/)
   i01=1
   i02=2
   i03=3
   i04=4
      if (i01.ne.1) print *,"fail"
      if (i02.ne.2) print *,"fail"
      if (i03.ne.3) print *,"fail"
      if (i04.ne.4) print *,"fail"
!$omp parallel private(/com34/)
   j01=1
   j02=2
   j03=3
   j04=4
      if (j01.ne.1) print *,"fail"
      if (j02.ne.2) print *,"fail"
      if (j03.ne.3) print *,"fail"
      if (j04.ne.4) print *,"fail"
!$omp end parallel
      end

subroutine test05()
integer(kind=1) :: i01,j01
integer(kind=2) :: i02,j02
integer(kind=4) :: i03,j03
integer(kind=8) :: i04,j04
common /com23/ i04,i03,i02,i01
common /com24/ j04,j03,j02,j01
!$omp threadprivate(/com23/)
   i01=1
   i02=2
   i03=3
   i04=4
      if (i01.ne.1) print *,"fail"
      if (i02.ne.2) print *,"fail"
      if (i03.ne.3) print *,"fail"
      if (i04.ne.4) print *,"fail"
!$omp parallel private(/com24/)
   j01=1
   j02=2
   j03=3
   j04=4
      if (j01.ne.1) print *,"fail"
      if (j02.ne.2) print *,"fail"
      if (j03.ne.3) print *,"fail"
      if (j04.ne.4) print *,"fail"
!$omp end parallel
      end

subroutine test04()
integer(kind=1) :: i01,j01
integer(kind=2) :: i02,j02
integer(kind=4) :: i03,j03
integer(kind=8) :: i04,j04
real(kind=8) :: i,j
common /com13/ i,i01,i02,i03,i04
common /com14/ j,j01,j02,j03,j04
!$omp threadprivate(/com13/)
   i01=1
   i02=2
   i03=3
   i04=4
      if (i01.ne.1) print *,"fail"
      if (i02.ne.2) print *,"fail"
      if (i03.ne.3) print *,"fail"
      if (i04.ne.4) print *,"fail"
!$omp parallel private(/com14/)
   j01=1
   j02=2
   j03=3
   j04=4
      if (j01.ne.1) print *,"fail"
      if (j02.ne.2) print *,"fail"
      if (j03.ne.3) print *,"fail"
      if (j04.ne.4) print *,"fail"
!$omp end parallel
      end

subroutine test03()
integer(kind=1) :: i01,j01
integer(kind=2) :: i02,j02
integer(kind=4) :: i03,j03
integer(kind=8) :: i04,j04
complex(kind=16) :: i,j
common /com05/ i,i01,i02,i03,i04
common /com06/ j,j01,j02,j03,j04
!$omp threadprivate(/com05/)
   i01=1
   i02=2
   i03=3
   i04=4
      if (i01.ne.1) print *,"fail"
      if (i02.ne.2) print *,"fail"
      if (i03.ne.3) print *,"fail"
      if (i04.ne.4) print *,"fail"
!$omp parallel private(/com06/)
   j01=1
   j02=2
   j03=3
   j04=4
      if (j01.ne.1) print *,"fail"
      if (j02.ne.2) print *,"fail"
      if (j03.ne.3) print *,"fail"
      if (j04.ne.4) print *,"fail"
!$omp end parallel
      end

subroutine test02()
integer(kind=1) :: i01,j01
integer(kind=2) :: i02,j02
integer(kind=4) :: i03,j03
integer(kind=8) :: i04,j04
real(kind=16) :: i,j
common /com03/ i,i01,i02,i03,i04
common /com04/ j,j01,j02,j03,j04
!$omp threadprivate(/com03/)
   i01=1
   i02=2
   i03=3
   i04=4
      if (i01.ne.1) print *,"fail"
      if (i02.ne.2) print *,"fail"
      if (i03.ne.3) print *,"fail"
      if (i04.ne.4) print *,"fail"
!$omp parallel private(/com04/)
   j01=1
   j02=2
   j03=3
   j04=4
      if (j01.ne.1) print *,"fail"
      if (j02.ne.2) print *,"fail"
      if (j03.ne.3) print *,"fail"
      if (j04.ne.4) print *,"fail"
!$omp end parallel
      end

subroutine test01()
integer(kind=1) :: i01,j01
integer(kind=2) :: i02,j02
integer(kind=4) :: i03,j03
integer(kind=8) :: i04,j04
common /com01/ i01,i02,i03,i04
common /com02/ j01,j02,j03,j04
!$omp threadprivate(/com01/)
   i01=1
   i02=2
   i03=3
   i04=4
      if (i01.ne.1) print *,"fail"
      if (i02.ne.2) print *,"fail"
      if (i03.ne.3) print *,"fail"
      if (i04.ne.4) print *,"fail"
!$omp parallel private(/com02/)
   j01=1
   j02=2
   j03=3
   j04=4
      if (j01.ne.1) print *,"fail"
      if (j02.ne.2) print *,"fail"
      if (j03.ne.3) print *,"fail"
      if (j04.ne.4) print *,"fail"
!$omp end parallel
      end

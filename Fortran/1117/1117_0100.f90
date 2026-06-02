call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
print *,'pass'
end

subroutine test01()
      common /com/ i
      i=1
!$omp parallel firstprivate(/com/)
      i=i+1
      if (i.ne.2) print *,"fail"
!$omp endparallel
      if (i.ne.1) print *,"fail"
      end

subroutine test02()
      common /coma/ ia
      common /com/ i
      i=1
!$omp parallel firstprivate(/com/)
!$omp do lastprivate(/coma/)
      do j=1,1
      i=2
      if (i.ne.2) print *,"fail"
      end do
!$omp enddo
!$omp endparallel
      if (i.ne.1) print *,"fail"
      end

subroutine test03()
      common /com/ i
      i=1
!$omp parallel do lastprivate(/com/)
      do j=1,1
      i=2
      if (i.ne.2) print *,"fail"
      end do
!$omp endparalleldo
      if (i.ne.2) print *,"fail"
      end

subroutine test04()
      common /com/ i
      i=1
!$omp parallel firstprivate(/com/)
!$omp master
      i=i+1
      if (i.ne.2) print *,"fail"
!$omp endmaster
!$omp endparallel
      if (i.ne.1) print *,"fail"
      end

subroutine test07()
      common /com/ i
      i=1
!$omp parallel firstprivate(/com/)
!$omp single
      i=i+1
      if (i.ne.2) print *,"fail"
!$omp endsingle
!$omp endparallel
      if (i.ne.1) print *,"fail"
      end

subroutine test05()
      common /com/ i
      common /coma/ ia
      i=1
!$omp parallel firstprivate(/com/)
!$omp sections lastprivate(/coma/)
      do j=1,1
      i=2
      if (i.ne.2) print *,"fail"
      end do
!$omp endsections
!$omp endparallel
      if (i.ne.1) print *,"fail"
      end

subroutine test06()
      common /com/ i
      i=1
!$omp parallel sections lastprivate(/com/)
      do j=1,1
      i=2
      if (i.ne.2) print *,"fail"
      end do
!$omp endparallelsections
      if (i.ne.2) print *,"fail"
      end

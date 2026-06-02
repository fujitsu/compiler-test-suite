      character(len=8)::string
      string='OPENMPV2'
!$omp parallel private(string)
      call sub(string)
!$omp end parallel
      if (string /= 'OPENMPV2') print *,"fail"
      print *,'pass'
      end

      subroutine sub(string)
      character(len=8)::string
      integer(4)::num
      integer(4),external::OMP_GET_THREAD_NUM
      num=-1
      string='openmpv2'
!$omp single
      string='OpenMPV2'
      num = OMP_GET_THREAD_NUM()
!$omp end single copyprivate(string)
      if (OMP_GET_THREAD_NUM() == num) goto1000
      if (string /= 'OpenMPV2') print *,"fail"
 1000 continue
      end subroutine sub

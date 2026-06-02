      character(len=8),dimension(4)::string='OPENMPV2'

      call sub1(string,4,num)
      if (any( string /= 'OPENMPV2' )) print *,"fail"
!$omp parallel private(string)
      call sub2(string,4,num)
!$omp end parallel
      if (any( string /= 'OPENMPV2' )) print *,"fail"
      print *,'pass'
    end program

    subroutine sub1(string,len,num)
      character(len=*)::string(len)
      integer(4),external::OMP_GET_THREAD_NUM
!$omp parallel private(string)
      string=(/'openmpv2','openmpv3','openmpv4','openmpv5'/)
!$omp single
      string=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/)
      num = OMP_GET_THREAD_NUM()
!$omp end single copyprivate(string)
      if (OMP_GET_THREAD_NUM() == num) goto1000
      if (any (string /= (/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/) )) &
          print *,"fail"
 1000 continue
!$omp end parallel
    end subroutine sub1

    subroutine sub2(string,len,num)
      character(len=*)::string(len)
      integer(4),external::OMP_GET_THREAD_NUM
      string=(/'openmpv2','openmpv3','openmpv4','openmpv5'/)
!$omp single
      string=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/)
      num = OMP_GET_THREAD_NUM()
!$omp end single copyprivate(string)
      if (OMP_GET_THREAD_NUM() == num) goto1000
      if (any (string /= (/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/) )) &
          print *,"fail"
 1000 continue
    end subroutine sub2

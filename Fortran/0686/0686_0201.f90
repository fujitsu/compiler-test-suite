    program ompv2cppr
      character(len=8),dimension(4,2,1,2)::string='OPENMPV2'

      call sub1(string,4,2,1,2,num)
      if (any( string /= 'OPENMPV2' )) print *,"fail"
!$omp parallel private(string)
      call sub2(string,4,2,1,2,num)
!$omp end parallel
      if (any( string /= 'OPENMPV2' )) print *,"fail"
      print *,'pass'
    end program

    subroutine sub1(string,len1,len2,len3,len4,num)
      character(len=*)::string(len1,len2,len3,len4)
      integer(4),external::OMP_GET_THREAD_NUM
!$omp parallel private(string)
!$omp workshare
      string(:,1,1,1)=(/'openmpv2','openmpv3','openmpv4','openmpv5'/)
      string(:,2,1,1)=(/'openmpv2','openmpv3','openmpv4','openmpv5'/)
      string(:,1,1,2)=(/'openmpv2','openmpv3','openmpv4','openmpv5'/)
      string(:,2,1,2)=(/'openmpv2','openmpv3','openmpv4','openmpv5'/)
!$omp end workshare
!$omp single
      string(:,1,1,1)=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/)
      string(:,2,1,1)=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/)
      string(:,1,1,2)=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/)
      string(:,2,1,2)=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/)
      num = OMP_GET_THREAD_NUM()
!$omp end single copyprivate(string)
      if (OMP_GET_THREAD_NUM() == num) goto1000
      if (any(string(:,1,1,1)/=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/))) &
          print *,"fail"
      if (any(string(:,2,1,1)/=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/))) &
          print *,"fail"
      if (any(string(:,1,1,2)/=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/))) &
          print *,"fail"
      if (any(string(:,2,1,2)/=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/))) &
          print *,"fail"
 1000 continue
!$omp end parallel
    end subroutine sub1

    subroutine sub2(string,len1,len2,len3,len4,num)
      character(len=*)::string(len1,len2,len3,len4)
      integer(4),external::OMP_GET_THREAD_NUM
!$omp workshare
      string(:,1,1,1)=(/'openmpv2','openmpv3','openmpv4','openmpv5'/)
      string(:,2,1,1)=(/'openmpv2','openmpv3','openmpv4','openmpv5'/)
      string(:,1,1,2)=(/'openmpv2','openmpv3','openmpv4','openmpv5'/)
      string(:,2,1,2)=(/'openmpv2','openmpv3','openmpv4','openmpv5'/)
!$omp end workshare
!$omp single
      string(:,1,1,1)=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/)
      string(:,2,1,1)=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/)
      string(:,1,1,2)=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/)
      string(:,2,1,2)=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/)
      num = OMP_GET_THREAD_NUM()
!$omp end single copyprivate(string)
      if (OMP_GET_THREAD_NUM() == num) goto1000
      if (any(string(:,1,1,1)/=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/))) &
          print *,"fail"
      if (any(string(:,2,1,1)/=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/))) &
          print *,"fail"
      if (any(string(:,1,1,2)/=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/))) &
          print *,"fail"
      if (any(string(:,2,1,2)/=(/'OpenMPV2','OpenMPV3','OpenMPV4','OpenMPV5'/))) &
          print *,"fail"
 1000 continue
    end subroutine sub2

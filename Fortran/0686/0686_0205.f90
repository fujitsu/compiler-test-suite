    module mod
      type aaa
       sequence
        character(len=9)::string
        logical(4)      ::l4
        integer(4)      ::i4
        real   (4)      ::r4
        complex(4)      ::c4
      end type aaa
    end module mod

    program abc
      use mod
      type(aaa)::st(3,2,1)
      st = reshape( (/aaa('OPENMP V2',.true.,1,1.1e1,(1.1e0,-1.1e0)), &
                      aaa('OPENMP V3',.true.,2,1.2e1,(1.2e0,-1.2e0)), &
                      aaa('OPENMP V4',.true.,3,1.3e1,(1.3e0,-1.3e0)), &
                      aaa('OPENMP V5',.true.,4,1.4e1,(1.4e0,-1.4e0)), &
                      aaa('OPENMP V6',.true.,5,1.5e1,(1.5e0,-1.5e0)), &
                      aaa('OPENMP V7',.true.,6,1.6e1,(1.6e0,-1.6e0))/), &
                    (/3,2,1/) )
      call sub1(st,3,2,1)
!$omp parallel private(st)
      call sub2(st,3,2,1)
!$omp end parallel
      if (any( st%string /= reshape( (/'OPENMP V2','OPENMP V3','OPENMP V4',   &
                                     'OPENMP V5','OPENMP V6','OPENMP V7'/), &
                                   (/3,2,1/) ) )) print *,"fail"
      if (.not.all(st%l4)) print *,"fail"
      if (any( st%i4 /= reshape( (/1,2,3,4,5,6/),(/3,2,1/) ) )) print *,"fail"
      if (any( st%r4 /= reshape( (/1.1e1,1.2e1,1.3e1,1.4e1,1.5e1,1.6e1/), &
                                 (/3,2,1/) ) )) print *,"fail"
      if (any( st%c4 /= reshape( (/(1.1,-1.1),(1.2,-1.2),(1.3,-1.3), &
                                   (1.4,-1.4),(1.5,-1.5),(1.6,-1.6)/), &
                                 (/3,2,1/) ) )) print *,"fail"
      call sub3(3,2,1)
      print *,'pass'
    end program abc

    subroutine sub1(st,len3,len2,len1)
      use mod
      type(aaa),dimension(len3,len2,len1)::st
!$omp parallel private(st)
      st = aaa('openmp v2',.false.,10,1.0e1,(1.0e1,-1.0e1))
!$omp single
      st%string = 'OpenMP V2'
      st%l4   = .true.
      st%i4   = st%i4 + 1
      st%r4   = st%r4 + 1.0e0
      st%c4   = st%c4 + (1.0e0,-1.0e0)
!$omp end single copyprivate(st)
      if (any( st%string /= 'OpenMP V2' )) print *,"fail"
      if (.not.all(st%l4)) print *,"fail"
      if (any( st%i4 /= 11 )) print *,"fail"
      if (any( st%r4 /= 1.1e1 )) print *,"fail"
      if (any( st%c4 /= (1.1e1,-1.1e1) )) print *,"fail"
!$omp end parallel
    end subroutine sub1

    subroutine sub2(st,len3,len2,len1)
      use mod
      type(aaa),dimension(len3,len2,len1)::st
      st = aaa('openmp v2',.false.,10,1.0e1,(1.0e1,-1.0e1))
!$omp single
      st%string = 'OpenMP V2'
      st%l4   = .true.
      st%i4   = st%i4 + 1
      st%r4   = st%r4 + 1.0e0
      st%c4   = st%c4 + (1.0e0,-1.0e0)
!$omp end single copyprivate(st)
      if (any( st%string /= 'OpenMP V2' )) print *,"fail"
      if (.not.all(st%l4)) print *,"fail"
      if (any( st%i4 /= 11 )) print *,"fail"
      if (any( st%r4 /= 1.1e1 )) print *,"fail"
      if (any( st%c4 /= (1.1e1,-1.1e1) )) print *,"fail"
    end subroutine sub2

    subroutine sub3(len3,len2,len1)
      use mod
      type(aaa),dimension(len3,len2,len1)::st
      st = reshape( (/aaa('OPENMP V2',.true.,1,1.1e1,(1.1e0,-1.1e0)), &
                      aaa('OPENMP V3',.true.,2,1.2e1,(1.2e0,-1.2e0)), &
                      aaa('OPENMP V4',.true.,3,1.3e1,(1.3e0,-1.3e0)), &
                      aaa('OPENMP V5',.true.,4,1.4e1,(1.4e0,-1.4e0)), &
                      aaa('OPENMP V6',.true.,5,1.5e1,(1.5e0,-1.5e0)), &
                      aaa('OPENMP V7',.true.,6,1.6e1,(1.6e0,-1.6e0))/), &
                    (/3,2,1/) )
!$omp parallel private(st)
      st = aaa('openmp v2',.false.,10,1.0e1,(1.0e1,-1.0e1))
!$omp single
      do i3=1,len1
        do i2=1,len2
          do i1=1,len3
            st(i1,i2,i3)%string = 'OpenMP V2'
            st(i1,i2,i3)%l4   = .true.
            st(i1,i2,i3)%i4   = st(i1,i2,i3)%i4 + 1
            st(i1,i2,i3)%r4   = st(i1,i2,i3)%r4 + 1.0e0
            st(i1,i2,i3)%c4   = st(i1,i2,i3)%c4 + (1.0e0,-1.0e0)
          enddo
        enddo
      enddo
!$omp end single copyprivate(st)
      if (any( st%string /= 'OpenMP V2' )) print *,"fail"
      if (.not.all(st%l4)) print *,"fail"
      if (any( st%i4 /= 11 )) print *,"fail"
      if (any( st%r4 /= 1.1e1 )) print *,"fail"
      if (any( st%c4 /= (1.1e1,-1.1e1) )) print *,"fail"
!$omp end parallel
      if (any( st%string /= reshape( (/'OPENMP V2','OPENMP V3','OPENMP V4',   &
                                     'OPENMP V5','OPENMP V6','OPENMP V7'/), &
                                   (/3,2,1/) ) )) print *,"fail"
      if (.not.all(st%l4)) print *,"fail"
      if (any( st%i4 /= reshape( (/1,2,3,4,5,6/),(/3,2,1/) ) )) print *,"fail"
      if (any( st%r4 /= reshape( (/1.1e1,1.2e1,1.3e1,1.4e1,1.5e1,1.6e1/), &
                                 (/3,2,1/) ) )) print *,"fail"
      if (any( st%c4 /= reshape( (/(1.1,-1.1),(1.2,-1.2),(1.3,-1.3), &
                                   (1.4,-1.4),(1.5,-1.5),(1.6,-1.6)/), &
                                 (/3,2,1/) ) )) print *,"fail"
    end subroutine sub3

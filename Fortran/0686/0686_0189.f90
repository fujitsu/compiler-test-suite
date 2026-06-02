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
      type(aaa)::st(3)
      st = (/aaa('OPENMP V2',.true.,1,1.1e1,(1.1e0,-1.1e0)), &
             aaa('OPENMP V3',.true.,2,1.2e1,(1.2e0,-1.2e0)), &
             aaa('OPENMP V4',.true.,3,1.3e1,(1.3e0,-1.3e0))/)
      call sub1(st,3)
!$omp parallel private(st)
      call sub2(st,3)
!$omp end parallel
      if (any( st%string /= (/'OPENMP V2','OPENMP V3','OPENMP V4'/) )) print *,"fail"
      if (.not.all(st%l4)) print *,"fail"
      if (any( st%i4 /= (/1,2,3/) )) print *,"fail"
      if (any( st%r4 /= (/1.1e1,1.2e1,1.3e1/) )) print *,"fail"
      if (any( st%c4 /= (/(1.1,-1.1),(1.2,-1.2),(1.3,-1.3)/) )) print *,"fail"
      call sub3(3)
      print *,'pass'
    end program abc

    subroutine sub1(st,len)
      use mod
      type(aaa),dimension(len)::st
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

    subroutine sub2(st,len)
      use mod
      type(aaa),dimension(len)::st
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

    subroutine sub3(len)
      use mod
      type(aaa),dimension(len)::st
      st = (/aaa('OPENMP V2',.true.,1,1.1e1,(1.1e0,-1.1e0)), &
             aaa('OPENMP V3',.true.,2,1.2e1,(1.2e0,-1.2e0)), &
             aaa('OPENMP V4',.true.,3,1.3e1,(1.3e0,-1.3e0))/)
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
      if (any( st%string /= (/'OPENMP V2','OPENMP V3','OPENMP V4'/) )) print *,"fail"
      if (.not.all(st%l4)) print *,"fail"
      if (any( st%i4 /= (/1,2,3/) )) print *,"fail"
      if (any( st%r4 /= (/1.1e1,1.2e1,1.3e1/) )) print *,"fail"
      if (any( st%c4 /= (/(1.1,-1.1),(1.2,-1.2),(1.3,-1.3)/) )) print *,"fail"
    end subroutine sub3

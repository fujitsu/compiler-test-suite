    module mod
      type aaa
        sequence
        character(len=9)::string
        logical(4)      ::l4
        integer(4)      ::i4
        real   (4)      ::r4
        complex(4)      ::c4
      end type aaa
      type(aaa),target::st1(3)=aaa('OPENMP V2',.true. ,1,1.0e0,(1.0e0,-1.0e0))
      type(aaa),target::st2(3)=aaa('openmp v2',.false.,10,1.0e1,(1.0e1,-1.0e1))
      type(aaa),target::st3(3)=aaa('OpenMP V2',.true. ,11,1.1e1,(1.1e1,-1.1e1))
    end module mod

    program abc
      call sub1()
      call sub2()
      print *,'pass'
    end program abc

    subroutine sub1()
     use mod
     type(aaa),pointer,dimension(:)::p_st
     interface
       subroutine sub1_sub(p_st)
         use mod
         type(aaa),pointer,dimension(:)::p_st
       end subroutine sub1_sub
     end interface
      p_st=>st1
!$omp parallel private(p_st)
      call sub1_sub(p_st)
!$omp end parallel
      if (any( p_st%string /= 'OPENMP V2' )) print *,"fail"
      if (.not.all(p_st%l4 )) print *,"fail"
      if (any( p_st%i4 /= 1 )) print *,"fail"
      if (any( p_st%r4 /= 1.0e0 )) print *,"fail"
      if (any( p_st%c4 /= (1.0e0,-1.0e0) )) print *,"fail"
    end subroutine sub1

    subroutine sub1_sub(p_st)
     use mod
     type(aaa),pointer,dimension(:)::p_st
      p_st=>st2
!$omp single
      p_st=>st3
!$omp end single copyprivate(p_st)
      if (any( p_st%string /= 'OpenMP V2' )) print *,"fail"
      if (.not.all(p_st%l4)) print *,"fail"
      if (any( p_st%i4 /= 11 )) print *,"fail"
      if (any( p_st%r4 /= 1.1e1 )) print *,"fail"
      if (any( p_st%c4 /= (1.1e1,-1.1e1) )) print *,"fail"
    end subroutine sub1_sub

    subroutine sub2()
     use mod
     type(aaa),pointer,dimension(:)::p_st
     interface
       subroutine sub2_sub(p_st)
         use mod
         type(aaa),pointer,dimension(:)::p_st
       end subroutine sub2_sub
     end interface
      p_st=>st1
      call sub2_sub(p_st)
      if (any( p_st%string /= 'OPENMP V2' )) print *,"fail"
      if (.not.all( p_st%l4 )) print *,"fail"
      if (any( p_st%i4 /= 1 )) print *,"fail"
      if (any( p_st%r4 /= 1.0e0 )) print *,"fail"
      if (any( p_st%c4 /= (1.0e0,-1.0e0) )) print *,"fail"
    end subroutine sub2

    subroutine sub2_sub(p_st)
     use mod
     type(aaa),pointer,dimension(:)::p_st
!$omp parallel private(p_st)
      p_st=>st2
!$omp single
      p_st=>st3
!$omp end single copyprivate(p_st)
      if (any( p_st%string /= 'OpenMP V2') ) print *,"fail"
      if (.not.all( p_st%l4) ) print *,"fail"
      if (any( p_st%i4 /= 11) ) print *,"fail"
      if (any( p_st%r4 /= 1.1e1) ) print *,"fail"
      if (any( p_st%c4 /= (1.1e1,-1.1e1)) ) print *,"fail"
!$omp end parallel
    end subroutine sub2_sub

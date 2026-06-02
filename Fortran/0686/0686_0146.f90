    module mod
      type zz
       sequence
        integer(8)::i8
      end type
    end module

    block data
     use mod
      character(6)::a
      integer(4),pointer::pi(:,:,:,:,:,:,:)
      logical(8)::l
      type (zz)::ss
      real(8),pointer::pr
      common /com/ a,pi,l,pr,ss
!$omp threadprivate(/com/)
      data a /'OpenMP'/
      data pi /null()/
      data l  /.false./
      data pr /null()/
      data ss / zz(8_8) /
    end block data

    program ompv2
      call sub1()
      call sub2()
     print *,'pass'
    end program

    subroutine sub1()
     use mod
      character(6)::a
      integer(4),pointer::pi(:,:,:,:,:,:,:)
      logical(8)::l
      real(8),pointer::pr
      type (zz)::ss
      common /com/ a,pi,l,pr,ss
!$omp threadprivate(/com/)
      integer(4),target,allocatable::alo(:,:,:,:,:,:,:)
      real(8),target::rr=8.0d0

      allocate(alo(2,2,2,2,2,2,2))
      alo=reshape((/(i,i=1,2**7)/),(/2,2,2,2,2,2,2/))
      pi=>alo
      pr=>rr

!$omp parallel copyin(/com/)
      if (a/='OpenMP') print *,"fail"
      if (any(pi/=reshape((/(i,i=1,2**7)/),(/2,2,2,2,2,2,2/)))) print *,"fail"
      if (l) print *,"fail"
      if (pr/=8.0d0) print *,"fail"
      if (ss%i8/=8_8) print *,"fail"
      if (size(pi)/=128) print *,"fail"
!$omp end parallel
      deallocate(alo)
    end subroutine sub1

    subroutine sub2()
     use mod
      character(6)::a
      integer(4),pointer::pi(:,:,:,:,:,:,:)
      logical(8)::l
      real(8),pointer::pr
      type (zz)::ss
      common /com/ a,pi,l,pr,ss
!$omp threadprivate(/com/)
      integer(4),target,allocatable::alo(:,:,:,:,:,:,:)
      real(8),target::rr=8.0d1

      allocate(alo(3,3,3,3,3,3,3))
      alo=reshape((/(i,i=1,3**7)/),(/3,3,3,3,3,3,3/))

!$omp parallel
      pi=>null()
      pr=>null()
!$omp single
      a='openmp'
      pi=>alo
      l=.true.
      pr=>rr
      ss=zz(10_8)
!$omp end single copyprivate(/com/)
!$omp critical
      if (a/='openmp') print *,"fail"
      a='oPENmp'
      if (any(pi/=reshape((/(i,i=1,3**7)/),(/3,3,3,3,3,3,3/)))) print *,"fail"
      if (size(pi)/=2187) print *,"fail"
      pi=>null()
      if (.not. l) print *,"fail"
      l=.false.
      if (pr/=8.0d1) print *,"fail"
      pr=>null()
      if (ss%i8/=10_8) print *,"fail"
      ss%i8=0_8
!$omp end critical
!$omp end parallel

      deallocate(alo)
      if (a/='oPENmp') print *,"fail"
      if (associated(pi)) print *,"fail"
      if (l) print *,"fail"
      if (associated(pr)) print *,"fail"
      if (ss%i8/=0_8) print *,"fail"

    end subroutine sub2

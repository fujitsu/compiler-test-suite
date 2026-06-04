    module mod
      type xyz
       sequence
        integer(4)::ii
      end type
    end module mod

    program ompv2
     use mod
     interface
      subroutine sub(kk,aa)
       use mod
        type(xyz)::aa(:)
        integer(8),dimension(:)::kk
      end subroutine sub
     end interface
     type(xyz)::aa(2)=(/ (/xyz((0))/) , (/xyz((1))/) /)
     integer(8),dimension(2)::kk=(/0_8,1_8/)
      call sub(kk,aa)
      if (any(aa%ii/=(/0,1/))) print *,"fail"
      if (any(kk/=(/0_8,1_8/))) print *,"fail"
      print *,'pass'
    end program ompv2

    subroutine sub(kk,aa)
     use mod
     type(xyz)::aa(:)
     integer(8),dimension(:)::kk
     integer(4),external::OMP_GET_THREAD_NUM

!$omp parallel firstprivate(aa,kk)
!$omp single
      do j=1,2
        do i=1,10
          aa(j)%ii=aa(j)%ii+i
          kk(j)=kk(j)+i
        enddo
      enddo
!$omp end single copyprivate(aa,kk)

      if (any(aa(:)%ii/=(/55,56/))) print *,"fail"
      if (any(kk/=(/55_8,56_8/))) print *,"fail"

!$omp master
      aa(:)%ii=aa(:)%ii+10
      kk=kk+10
!$omp end master
!$omp barrier

      select case (OMP_GET_THREAD_NUM())
        case (0)
          if (any(aa(:)%ii/=(/65,66/))) print *,"fail"
          if (any(kk/=(/65_8,66_8/))) print *,"fail"
        case default
          if (any(aa(:)%ii/=(/55,56/))) print *,"fail"
          if (any(kk/=(/55_8,56_8/))) print *,"fail"
      end select

!$omp end parallel

      end

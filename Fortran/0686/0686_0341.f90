      type xyz
       sequence
        integer(4),dimension(2)::ii
      end type
      type(xyz)::aa=xyz((/0,1/))
      integer(4),external::OMP_GET_THREAD_NUM
      integer(8),dimension(2)::kk

      kk=(/0_8,1_8/)

!$omp parallel firstprivate(aa,kk)
!$omp single
      do j=1,2
        do i=1,10
          aa%ii(j)=aa%ii(j)+i
          kk(j)=kk(j)+i
        enddo
      enddo
!$omp end single copyprivate(aa,kk)

      if (any(aa%ii/=(/55,56/))) print *,"fail"
      if (any(kk/=(/55_8,56_8/))) print *,"fail"

!$omp master
      aa%ii=aa%ii+10
      kk=kk+10
!$omp end master
!$omp barrier

      select case (OMP_GET_THREAD_NUM())
        case (0)
          if (any(aa%ii/=(/65,66/))) print *,"fail"
          if (any(kk/=(/65_8,66_8/))) print *,"fail"
        case default
          if (any(aa%ii/=(/55,56/))) print *,"fail"
          if (any(kk/=(/55_8,56_8/))) print *,"fail"
      end select

!$omp end parallel

          if (any(aa%ii/=(/0,1/))) print *,"fail"
          if (any(kk/=(/0_8,1_8/))) print *,"fail"
        print *,'pass'
      end

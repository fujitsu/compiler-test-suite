    module mod
      type xyz
       sequence
        integer(4),dimension(2)::ii
      end type
    end module mod

    module mod1
     use mod
      type(xyz)::aa
      integer(4),external::OMP_GET_THREAD_NUM
      integer(8),dimension(2)::kk
      common /com/ kk,aa
!$omp threadprivate(/com/)
    end module mod1

    block data
     use mod
      type(xyz)::aa
      integer(8),dimension(2)::kk
      common /com/ kk,aa
      data aa /xyz((/0,1/))/
      data kk /0,0/
!$omp threadprivate(/com/)
    end block data

    program ompv2
      use mod1, only: xyz,OMP_GET_THREAD_NUM
      type(xyz)::aa
      integer(8),dimension(2)::kk
      common /com/ kk,aa
!$omp threadprivate(/com/)
      kk=(/0_8,1_8/)

!$omp parallel copyin(/com/)
!$omp single
      do j=1,2
        do i=1,10
          aa%ii(j)=aa%ii(j)+i
          kk(j)=kk(j)+i
        enddo
      enddo
!$omp end single copyprivate(/com/)

      if (any(aa%ii/=(/55,56/))) print *,'fail'
      if (any(kk/=(/55_8,56_8/))) print *,'fail'

!$omp master
      aa%ii=aa%ii+10
      kk=kk+10
!$omp end master
!$omp barrier

      select case (OMP_GET_THREAD_NUM())
        case (0)
          if (any(aa%ii/=(/65,66/))) print *,'fail'
          if (any(kk/=(/65_8,66_8/))) print *,'fail'
        case default
          if (any(aa%ii/=(/55,56/))) print *,'fail'
          if (any(kk/=(/55_8,56_8/))) print *,'fail'
      end select

!$omp end parallel

        if (any(aa%ii/=(/65,66/))) print *,'fail'
        if (any(kk/=(/65_8,66_8/))) print *,'fail'
      print *,'pass'
    end program

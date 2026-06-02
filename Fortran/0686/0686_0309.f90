      integer(4),parameter::len=5
      real,dimension(len)::x,y

      x=(/1.0,2.0,3.0,4.0,5.0/)
      y=(/5.0,4.0,3.0,2.0,1.0/)
      open(11,file='omp2.fort.11')
      write(11,'(10f10.3)') x,y
      close(11,status='keep')

!$omp parallel
      call s(len)
!$omp endparallel

      print *,'pass'
      end

      SUBROUTINE S(N)
      REAL, DIMENSION(:), ALLOCATABLE :: A
      REAL, DIMENSION(:), POINTER :: B
      open(11,file='omp2.fort.11',status='OLD')
      ALLOCATE (A(N))
!$OMP SINGLE
      ALLOCATE (B(N))
      READ (11,'(10f10.3)') A,B
!$OMP END SINGLE COPYPRIVATE(A,B)
      if (any(A/=(/1.0,2.0,3.0,4.0,5.0/))) print *,"fail"
      if (any(B/=(/5.0,4.0,3.0,2.0,1.0/))) print *,"fail"
!$OMP BARRIER
!$OMP SINGLE
      if (associated(B)) DEALLOCATE (B)
!$OMP END SINGLE NOWAIT
      close(11,status='DELETE')
      END SUBROUTINE S

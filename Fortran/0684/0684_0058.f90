      type tag
       complex*16,dimension(:),pointer:: cp
      end type

      type tag2
        type (tag), dimension(10) :: t
      end type
      type (tag2) :: s

!$OMP PARALLEL private (s)
      do i=1,10
        allocate(s%t(i)%cp(1:i))
      end do
!$OMP END PARALLEL
print *,'pass'
      end

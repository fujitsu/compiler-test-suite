       program main

      Implicit None
      REAL(KIND=8),dimension(:),allocatable :: a
      INTEGER(KIND=4)                       :: M=10
      INTEGER(KIND=4)                       :: i
      if (allocated(a)) deallocate(a)
      allocate(a(M))
      do i = 1, M
        a(i) =1.d00
      end do
      write(1,*) ' a =', a
      print *,'pass'
      end

      program main
      logical x
      type z
        logical :: x(2)=(/.true.,.false./)
      end type
      type (z) a
      i=2
!$omp parallel if(a%x(i))
      write(20,*)'test'
!$omp endparallel
      print *,'pass'
      end

    Module mod
      integer(4)::i11
!$omp threadprivate(i11)
    end module mod

    subroutine sub()
     use mod
      save::i1,i2
!$omp threadprivate(i1,i2)
    end

    program ompv2
      call sub()
      print *,'pass'
    end program

     1  module mod_1
     2    integer :: var
        !$omp threadprivate (var)  ! 2)
     4  end
     5  module mod_2   ! 3)
     6    use mod_1, ONLY:  var ! 4), 5), 6)
     7  end
     8    use mod_2 ! 7)
     9    use mod_1 ! 8)
    10  var=1       ! 9)
        print *,'pass'
    11  end

     1  module mod_1
     2    integer :: var
        !$omp threadprivate (var)
     4  end
     5  module mod_2
     6    use mod_1, ONLY:  var
     7  end
     8    use mod_2
     9    use mod_1
    10  var=1
        print *,'pass'
    11  end

     1  module test_mod
     2    type body
     3       integer x
     4    end type
     5    type ty
     6       type(body),allocatable :: k
     7    end type ty
     8  contains
     9    function foo()
    10      type(ty) :: foo
    11      allocate(foo%k)
    12      foo%k%x = 1
    13    end function foo
    14  end module test_mod
    16  program main
    17    use test_mod
    18    type(ty) :: b
    19    b = foo()
    20    write(91,*)b%k%x
          print *,'pass' 
    21  end program main


  module declare_elemental_procedure
    interface assignment(=)
      module procedure assignment
    end interface

    interface operator(>)
      module procedure graterthan
    end interface

    contains
      elemental pure subroutine assignment(arg1,arg2)
        integer , intent(out) :: arg1
        character(*) , intent(in) :: arg2
        arg1 = len(arg2)
      end subroutine

      elemental pure function graterthan(arg1,arg2)
        integer , intent(in) :: arg1
        character(*) , intent(in) :: arg2
        logical graterthan
        graterthan = .false.
        if (arg1 > len(arg2)) graterthan = .true.
      end function

  end module

  module declare_nonelemental_procedure

    contains

      function set_all_0_and_return_upper_true (arg1)
        integer ,dimension(5) :: arg1
        logical ,dimension(5) :: set_all_0_and_return_upper_true
        arg1 = 0
        set_all_0_and_return_upper_true = &
 	&  (/.false.,.false.,.false.,.true.,.true./)
      end function

      function set_all_0_and_return_all_3 (arg1)
        integer ,dimension(5) :: arg1
        integer ,dimension(5) :: set_all_0_and_return_all_3
        arg1 = 0
        set_all_0_and_return_all_3 = 3
      end function

      function set_all_7_return_5_4_3_2_1 (arg1)
        integer ,dimension(5) :: arg1
        integer ,dimension(5) :: set_all_7_return_5_4_3_2_1
        arg1 = 7
        set_all_7_return_5_4_3_2_1 = (/5,4,3,2,1/)
      end function

  end module 

  program main

    use declare_elemental_procedure
    use declare_nonelemental_procedure

    integer , dimension(5) :: a
    integer , dimension(5) :: b

    integer :: error = 0

    a = (/1,2,3,4,5/)
    test_1 : where (a > 4)
      a = 3
    else where (a == 3)  test_1
      a = 6
    else where  test_1
      a = 7
    end where test_1
    if (any(a /= (/7,7,6,7,3/))) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    endif

    a = (/1,2,3,4,5/)
    b = (/1,2,3,4,5/)
    test_2 : where (a > 3)
      a = 3
      test_2_1 : where (a == 3)
        b = 0
      end where test_2_1
    end where test_2
    if (any(b /= (/1,2,3,0,0/))) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    endif

    a = (/1,2,3,4,5/)
    b = (/1,2,3,4,5/)
    test_3 : where (a > 3)
      a = "abcd"
      b = (/("ABC",i=1,5)/)
    end where test_3
    if (any(a /= (/1,2,3,4,4/))) then
      print *, " +++ error : item 3 +++ "
      error = error +1
    endif
    if (any(b /= (/1,2,3,3,3/))) then
      print *, " +++ error : item 3 +++ "
      error = error +1
    endif

    a = (/1,2,3,4,5/)
    b = (/1,2,3,4,5/)
    test_4 : where (a > "ab" .and. b > (/"abc","abc","abc","abc","abc"/))
      a = (/ 3,6,9,12,15 /)
      b = (/ 5,10,15,20,25 /)
    end where test_4
    if (any(a /= (/1,2,3,12,15/))) then
      print *, " +++ error : item 4 +++ "
      error = error +1
    endif
    if (any(b /= (/1,2,3,20,25/))) then
      print *, " +++ error : item 4 +++ "
      error = error +1
    endif

    a = (/1,2,3,4,5/)
    b = (/1,2,3,4,5/)
    where (set_all_0_and_return_upper_true(b))
      a = (/ 5,5,5,5,5 /)
      b = (/ 3,3,3,3,3 /)
    end where
    if (any(a /= (/1,2,3,5,5/))) then
      print *, " +++ error : item 5 +++ "
      error = error +1
    endif
    if (any(b /= (/0,0,0,3,3/))) then
      print *, " +++ error : item 5 +++ "
      error = error +1
    endif

    a = (/1,2,3,4,5/)
    where (a > 3)
      a = set_all_0_and_return_all_3(a)
    end where
    if (any(a /= (/0,0,0,3,3/))) then
      print *, " +++ error : item 6 +++ "
      error = error +1
    endif

    a = (/1,2,3,4,5/)
    where (a > 3)
      a(set_all_7_return_5_4_3_2_1(a)) = 0
    end where
    if (any(a /= (/0,0,7,7,7/))) then
      print *, " +++ error : item 7 +++ "
      error = error +1
    endif

    a = (/1,2,3,4,5/)
    where (a > 3)
      a((/5,4,3,2,1/)) = 9
    end where
    if (any(a /= (/9,9,3,4,5/))) then
      print *, " +++ error : item 8 +++ "
      error = error +1
    endif

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

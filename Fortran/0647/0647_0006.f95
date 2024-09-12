  program main

    implicit none

    integer , target :: scalar_target_integer
    real    , target :: scalar_target_real
    integer , target,dimension(3) :: array_target_integer
    real    , target,dimension(3) :: array_target_real
    integer :: scalar_not_target_integer
    real    :: scalar_not_target_real
    integer , dimension(3) :: array_not_target_integer
    real    , dimension(3) :: array_not_target_real

    integer , pointer :: scalar_pointer_integer
    real    , pointer :: scalar_pointer_real

    equivalence ( scalar_target_integer, &
		& scalar_target_real, &
		& array_target_integer, &
		& array_target_real, &
		& scalar_not_target_integer, &
		& scalar_not_target_real, &
		& array_not_target_integer, &
		& array_not_target_real)

    integer :: error = 0

    scalar_pointer_integer => scalar_target_integer ;
    if (.not.associated(scalar_pointer_integer)) then
      print *, " +++ error : item 1 +++ ",1
      error = error +1 ;
    end if
    if (.not.associated(scalar_pointer_integer,scalar_target_integer)) then
      print *, " +++ error : item 1 +++ ",2
      error = error +1 ;
    end if

    scalar_pointer_integer = 10
    if (scalar_target_integer /= 10) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (scalar_not_target_integer /= 10) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (array_target_integer(1) /= 10) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (array_not_target_integer(1) /= 10) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if

    array_not_target_integer(1) = 100 
    if (scalar_pointer_integer /= 100) then
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    endif

    scalar_pointer_real => array_target_real(1)
    if (.not.associated(scalar_pointer_real,array_target_real(1))) then
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if

    scalar_pointer_real = 0
    if (scalar_pointer_integer /= 0) then
      print *, " +++ error : item 5 +++ "
      error = error +1 ;
    endif

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

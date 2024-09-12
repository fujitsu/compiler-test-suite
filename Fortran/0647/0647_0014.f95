  program main

    integer,dimension(5)   :: var1
    integer,dimension(1,5) :: var2
    integer,dimension(5)   :: var3
    integer,dimension(1,5) :: var4

    integer :: error = 0

    call assignment_to_assumed_size_array(var1,var2,var3,var4,error)

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

  subroutine assignment_to_assumed_size_array(var1,var2,var3,var4,error)

    integer,dimension(*)     :: var1
    integer,dimension(1,*)   :: var2
    integer,dimension(1:*)   :: var3
    integer,dimension(1,1:*) :: var4

    integer,dimension(5) :: subscript_var=(/2,2,3,1,4/)

    integer :: error

    var1(:5) = 1
    var2(1,:5) = 1
    var3(1:5) = 1
    var4(:,1:5) = 1

    var1(:4) = 1
    var2(1,:4) = 1
    var3(2:3) = 1
    var4(:,1:4) = 1

    var1(subscript_var) = 1
    var2(1,subscript_var) = 1
    var3(subscript_var) = 1
    var4(:,subscript_var) = 1

    if (any((/var1(1:5) /= 1 , var2(1,1:5) /= 1, &
	&     var3(1:5) /= 1 , var4(1,1:5) /= 1/))) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    end if

    if (any((/ size(var2,1) /= 1 , size(var4,1) /= 1/))) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    end if

  end subroutine

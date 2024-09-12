  program main

    integer,parameter,dimension(3) :: pa=(/3,5,7/)
    integer :: ary1(5),ary2(1,1,5)
    integer :: ary3(3)
    character*2 :: ary4(3)
    data (ary1(i),i=pa(1)-2,pa(2))/1,2,3,4,5/
    data (ary2(pa(3)-pa(1)*2,pa(1)-2,i),i=pa(1)-2,pa(2))/1,2,3,4,5/
    data ary3/pa(1)*pa(3)/
    data ary4/pa(1)*"abcdefg"(3:4)/

    integer :: error = 0

    if (.not.all(ary1 == ary2(1,1,:))) then
      print *, " +++ error : item 1 +++ "
      error = error + 1
    end if

    if (.not.all(ary3 == 7)) then
      print *, " +++ error : item 2 +++ "
      error = error + 1
    end if

    if (.not.all(ary4 == "cd"(1:))) then
      print *, " +++ error : item 3 +++ "
      error = error + 1
    end if

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

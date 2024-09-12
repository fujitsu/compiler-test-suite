  program main

    namelist /nam1/ nam1_i1,nam1_i2,nam1_i3
    character(30) ,dimension(6) :: nam1_data

    character(10) :: nam2_c1,nam2_c2,nam2_c3
    namelist /nam2/ nam2_c1,nam2_c2,nam2_c3
    character(40) ,dimension(6) :: nam2_data

    integer :: error = 0

    nam1_data = (/"! namelist input comment ", &
	&	  "&nam1 ", &
	&	  "nam1_i1 = 10 , ! comment ", &
	&	  "! namelist input comment ", &
	&	  "nam1_i2 = 20  !comment ", &
	&	  "nam1_i3 = 30 /" /)

    nam2_data = (/"! namelist input comment ", &
	&	  "&nam2 ", &
	&	  "nam2_c1 = 'aa,!not comment' , ! comment ", &
	&	  "! namelist input comment ", &
	&	  "nam2_c2 = 'bb !not comment'  ! comment ", &
	&	  "nam2_c3 = 'cc !not comment' /" /)

    read (unit=nam1_data,nml=nam1)

    if (any((/nam1_i1/=10,nam1_i2/=20,nam1_i3/=30/))) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    end if

    read (unit=nam2_data,nml=nam2)

    if (any((/nam2_c1/='aa,!not comment'(1:10), &
	&     nam2_c2/='bb !not comment'(1:10), &
	&     nam2_c3/='cc !not comment'(1:10) /))) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    end if

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

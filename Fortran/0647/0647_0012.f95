  module define_the_elemental_procedure
    implicit none

    interface operator(.ope.)
      module procedure   elemental_operator
    end interface 

    contains

      elemental function elemental_operator(arg1,arg2) result(res)
      integer (kind=2),intent(in) :: arg1,arg2
      integer (kind=2) :: res
      res = arg1 + arg2*2
      end function

      elemental function elemental_function(arg1,arg2) result(res)
      integer (kind=2),intent(in) :: arg1,arg2
      integer (kind=2) :: res
      res = arg1 + arg2*2
      end function

      elemental subroutine elemental_subroutine(arg1,arg2,res)
      integer (kind=2),intent(in) :: arg1,arg2
      integer (kind=2),intent(out) :: res
      res = arg1 + arg2*2
      end subroutine

  end module

  program main

    use define_the_elemental_procedure

    implicit none 

    integer(2) :: scalar_var
    integer(2),parameter :: scalar_cnt = 2
    integer(2),dimension(3) :: dim1_var
    integer(2),dimension(3),parameter :: dim1_cnt = (/2,4,6/)
    integer(2),dimension(3,3,3) :: dim3_var
    integer(2),dimension(3,3,3),parameter :: dim3_cnt = &
	& reshape((/2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36, &
	&           38,40,42,44,46,48,50,52,54/),(/3,3,3/))

    integer(2) :: scalar_result_opr
    integer(2) :: scalar_result_fun
    integer(2) :: scalar_result_sub
    integer(2),dimension(3) :: dim1_result1_opr
    integer(2),dimension(3) :: dim1_result2_opr
    integer(2),dimension(3) :: dim1_result3_opr
    integer(2),dimension(3) :: dim1_result1_fun
    integer(2),dimension(3) :: dim1_result2_fun
    integer(2),dimension(3) :: dim1_result3_fun
    integer(2),dimension(3) :: dim1_result1_sub
    integer(2),dimension(3) :: dim1_result2_sub
    integer(2),dimension(3) :: dim1_result3_sub
    integer(2),dimension(3,3,3) :: dim3_result1_opr
    integer(2),dimension(3,3,3) :: dim3_result2_opr
    integer(2),dimension(3,3,3) :: dim3_result3_opr
    integer(2),dimension(3,3,3) :: dim3_result1_fun
    integer(2),dimension(3,3,3) :: dim3_result2_fun
    integer(2),dimension(3,3,3) :: dim3_result3_fun
    integer(2),dimension(3,3,3) :: dim3_result1_sub
    integer(2),dimension(3,3,3) :: dim3_result2_sub
    integer(2),dimension(3,3,3) :: dim3_result3_sub

    integer :: error = 0

    scalar_var = 1
    dim1_var = (/1,2,3/)
    dim3_var = &
	& reshape((/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18, &
	&	    19,20,21,22,23,24,25,26,27/),(/3,3,3/))

    scalar_result_opr = scalar_var .ope. scalar_cnt
    dim1_result1_opr  = scalar_var .ope. dim1_cnt
    dim1_result2_opr  = dim1_var .ope. scalar_cnt
    dim1_result3_opr  = dim1_var .ope. dim1_cnt
    dim3_result1_opr  = scalar_cnt .ope. dim3_var
    dim3_result2_opr  = dim3_cnt .ope. scalar_var
    dim3_result3_opr  = dim3_cnt .ope. dim3_var

    scalar_result_fun = elemental_function(scalar_var,scalar_cnt)
    dim1_result1_fun  = elemental_function(scalar_var,dim1_cnt)
    dim1_result2_fun  = elemental_function(dim1_var,scalar_cnt)
    dim1_result3_fun  = elemental_function(dim1_var,dim1_cnt)
    dim3_result1_fun  = elemental_function(scalar_cnt,dim3_var)
    dim3_result2_fun  = elemental_function(dim3_cnt,scalar_var)
    dim3_result3_fun  = elemental_function(dim3_cnt,dim3_var)

    call elemental_subroutine(scalar_var,scalar_cnt,scalar_result_sub)
    call elemental_subroutine(scalar_var,dim1_cnt,dim1_result1_sub)
    call elemental_subroutine(dim1_var,scalar_cnt,dim1_result2_sub)
    call elemental_subroutine(dim1_var,dim1_cnt,dim1_result3_sub)
    call elemental_subroutine(scalar_cnt,dim3_var,dim3_result1_sub)
    call elemental_subroutine(dim3_cnt,scalar_var,dim3_result2_sub)
    call elemental_subroutine(dim3_cnt,dim3_var,dim3_result3_sub)

    if (any((/scalar_result_opr /= scalar_result_fun, &
	&     scalar_result_fun /= scalar_result_opr/))) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    if (any((/any(dim1_result1_opr /= dim1_result1_fun), &
	&     any(dim1_result1_fun /= dim1_result1_opr)/))) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (any((/any(dim1_result2_opr /= dim1_result2_fun), &
	&     any(dim1_result2_fun /= dim1_result2_opr)/))) then
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    if (any((/any(dim1_result3_opr /= dim1_result3_fun), &
	&     any(dim1_result3_fun /= dim1_result3_opr)/))) then
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if
    if (any((/any(dim3_result1_opr /= dim3_result1_fun), &
	&     any(dim3_result1_fun /= dim3_result1_opr)/))) then
      print *, " +++ error : item 5 +++ "
      error = error +1 ;
    end if
    if (any((/any(dim3_result2_opr /= dim3_result2_fun), &
	&     any(dim3_result2_fun /= dim3_result2_opr)/))) then
      print *, " +++ error : item 6 +++ "
      error = error +1 ;
    end if
    if (any((/any(dim3_result3_opr /= dim3_result3_fun), &
	&     any(dim3_result3_fun /= dim3_result3_opr)/))) then
      print *, " +++ error : item 7 +++ "
      error = error +1 ;
    end if

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

module mod_check
  type data
    integer arr(10)
  end type
contains
  function ext_check(Parr)
    integer ,intent(in) :: Parr(10)
    logical :: ext_check
    logical :: ret
    if (all(Parr == (/1,2,3,4,5,6,7,8,9,10/))) then
      ret = .false.
    else
      ret = .true.
    end if
    ext_check = ret
  end function
end module

program main
  use mod_check
  type(data) :: dat
  integer :: cnt

  interface
    function ext_fun01(p1)
      integer,intent(in) :: p1(:)
      integer ext_fun01(size(p1))
    end function
  end interface

  do cnt=1,1
    dat%arr = ext_fun01(dat%arr)
  end do
  if (ext_check(dat%arr)) stop "NG 01"

  do cnt=1,1
    dat%arr = fun01(dat%arr)
  end do
  if (ext_check(dat%arr)) stop "NG 02"

  print *,"pass"
contains
  pure function fun01(p_arr)
    integer,intent(in) :: p_arr(:)
    integer fun01(size(p_arr))

    do i=1,(size(p_arr))
      fun01(i) = i
    end do
  end function
end

pure function ext_fun01(p_arr)
  integer,intent(in) :: p_arr(:)
  integer ext_fun01(size(p_arr))

  do i=1,(size(p_arr))
    ext_fun01(i) = i
  end do
end function


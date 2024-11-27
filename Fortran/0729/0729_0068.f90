module int_str
  public :: int2str,dig
contains
  function dig(i) result (d)
    integer , intent(in) :: i
    integer :: d
    integer :: absi
    absi = abs(i)
    if (absi == i) then
       d = 1
    else
       d = 2
    end if
    do
       if (absi < 10) then
          return
       else
          d = d + 1
          absi = absi / 10
       end if
    end do
  end function dig
  function int2str(i,len_i) result(s)
    integer , intent(in) :: i,len_i
    character (len=len_i) :: s
    integer :: i_copy,j,k,is
    i_copy = abs(i)
    if ( i_copy == i ) then
       is = 1
    else
       is = 2
       s(1:1) = "-"
    end if
    do j=len_i,is,-1
       k = modulo(i_copy,10)+1
       s(j:j) = "0123456789"(k:k)
       i_copy = i_copy / 10
    end do
    return
  end function int2str
end module int_str
program t
  use int_str
  integer :: i
  do i=-20,20
    write(1,*)i
  end do
  rewind 1
  do
    read (unit=1,fmt=*,end=1) i
    write(2,'(a)')"_"//int2str(i,dig(i))//"_"
  end do
  1 rewind 2
  print *,'pass'
end program t

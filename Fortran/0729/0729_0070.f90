module int_str
  implicit none
  public :: int2str
contains
  function int2str(intval) result(string)
    integer , intent(in) :: intval
    integer :: n
    character(len=12 - max(0,sign(1,intval)) - verify(transfer(achar(48+  &
      (/(mod(max(1,abs(intval))/10**n,10),n=9,0,-1)/) ), &
           "1234567890"), "0") ) :: string
    integer :: absval, j, k
    character(len=11) :: buf
    absval = abs(intval)
    buf  = " "
    do j= 11, 1, -1
       k = modulo(absval,10) + 1
       buf(j:j) = "0123456789"(k:k)
       absval = absval / 10
       if(absval == 0) exit
    end do
    if(intval < 0) then
       j = j - 1
       buf(j:j) = "-"
    end if
    string = adjustl(buf)
    return
  end function int2str
end module int_str

program t
  use int_str
  integer :: i, status
  write(107,*)10
  write(107,*)-10
  rewind 107
  do
    write(106,"(A)",advance="no") "Enter an integer: "
    read(107,*,iostat=status) i
    if(status /= 0) exit
    write(108,*) '"' // int2str(i) // '"'
  end do
 print *,'pass'
end program t

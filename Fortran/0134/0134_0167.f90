program main
  integer i(2)
  interface
    subroutine s1(i)
      integer :: i(:)
    end subroutine
  end interface
  i =(/1,2/)
  call s1(i)
  print *,'pass'
end

subroutine s1(i)
  interface
    subroutine chk(i)
      integer :: i(:)
    end subroutine
  end interface
  NAMELIST /nam/ i
  integer :: i(:)
  write(1,nam)
  call chk(i)
end

subroutine chk(i)
  integer :: i(:)
  NAMELIST /nam/ i
  rewind 1
  read(1,nam)
  if (any(i /= (/1,2/))) print *, i
end

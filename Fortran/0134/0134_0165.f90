program main
  call s1(5)
  print *,'pass'
end

subroutine s1(n)
  integer :: ia(n)
  NAMELIST /nam/ ia
  ia = (/1,2,3,4,5/)
  write(1,nam)
  call chk(n)
end

subroutine chk(n)
  NAMELIST /nam/ ia
  integer :: ia(n)
  ia = (/6,7,8,9,0/)
  rewind 1
  read(1,nam)
  if (size(ia) /= 5 .or. any(ia /= (/1,2,3,4,5/))) print *, ia
end

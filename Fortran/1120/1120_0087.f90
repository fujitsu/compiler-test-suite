program main
  NAMELIST /nam/ a
  !$omp threadprivate(a)
  save
  a = 123
    write(4,nam)
rewind 4
call s
  print *,'pass'
end
subroutine s
  NAMELIST /nam/ a
  !$omp threadprivate(a)
  save
read(4,nam)
end

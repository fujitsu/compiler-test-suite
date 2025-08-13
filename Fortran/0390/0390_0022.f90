
program main
  NAMELIST /nam/ a
  !$omp threadprivate(a)
  save
  a = 123
    write(10,nam)
rewind 10
call s
  print *,'pass'
end
subroutine s
  NAMELIST /nam/ a
  !$omp threadprivate(a)
  save
read(10,nam)
if (a/=123) print *,101
end

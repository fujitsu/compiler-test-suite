
program main
  NAMELIST /nam/ a
  !$omp threadprivate(a)
  save
  a = 123
    write(1,nam)
rewind 1
call s
  print *,'pass'
end
subroutine s
  NAMELIST /nam/ a
  !$omp threadprivate(a)
  save
read(1,nam)
if (a/=123) print *,101
end


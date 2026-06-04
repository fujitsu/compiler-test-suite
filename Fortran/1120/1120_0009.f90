program main
  common /com/ a
  !$omp threadprivate(/com/)
  a = 123
  call s1
  print *,'snes99_010.f03 : pass'
end

subroutine s1
  common /com/ a
  NAMELIST /nam/ a
  !$omp threadprivate(/com/)
  !$omp parallel copyin(a)
    write(3,nam)
  !$omp end parallel
  call chk
end

subroutine chk
  common /com/ a
  !$omp threadprivate(/com/)
  NAMELIST /nam/ a
  !$omp parallel
    rewind 3
    read(3,nam)
  !$omp end parallel
end

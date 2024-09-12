program main
  common /com/ a
  !$omp threadprivate(/com/)
  a = 123
  call s1
  print *,'pass'
end

subroutine s1
  common /com/ a
  NAMELIST /nam/ a
  !$omp threadprivate(/com/)
  !$omp parallel copyin(a)
    write(1,nam)
  !$omp end parallel
  call chk
end

subroutine chk
  common /com/ a
  !$omp threadprivate(/com/)
  NAMELIST /nam/ a
  !$omp parallel
    rewind 1
    read(1,nam)
  !$omp end parallel
end

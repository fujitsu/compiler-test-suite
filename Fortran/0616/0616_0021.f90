program main
  call s1(10)
  print *,'pass'
end

subroutine s1(n)
  real sum
  NAMELIST /nam/ sum
  sum = 0.0 
  !$OMP PARALLEL DO REDUCTION(+:SUM)
      DO I = 1, N
        SUM = SUM + I
        write (1,nam)
      ENDDO
  !$OMP end PARALLEL DO
   rewind 1
  call chk(n)
end

subroutine chk(n)
  NAMELIST /nam/ sum
  real sum
  sum = 0.0 
  !$OMP PARALLEL DO REDUCTION(+:SUM)
      DO I = 1, N
        read (1,nam)
      ENDDO
  !$OMP end PARALLEL DO
  if (sum /= 55.0) write(100,*)sum
end

intrinsic :: dlog, dabs
call zee (a, b, dlog)
end

subroutine zee(a,b,dlog)
real(8) :: dlog
external :: dlog
  print *,'pass'
end

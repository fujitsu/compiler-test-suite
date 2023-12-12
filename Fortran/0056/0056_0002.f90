subroutine s
 parameter(k=1001)
    integer(1):: i(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
end
subroutine t
 parameter(k=1000)
    integer(1):: i(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
end
call s
call t
  print *,'OK'
end 

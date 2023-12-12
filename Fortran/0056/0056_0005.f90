subroutine s
 parameter(k=250)
block
    integer(1):: i(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
end block
block
    integer(1):: i(k+1)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
end block
block
    integer(1):: i(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
end block
block
    integer(1):: i(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
end block
end
subroutine t
 parameter(k=250)
block
    integer(1):: i(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
end block
block
    integer(1):: i(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
end block
block
    integer(1):: i(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
end block
block
    integer(1):: i(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
end block
end
call s
call t
  print *,'OK'
end 

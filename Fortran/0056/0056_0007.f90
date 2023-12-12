subroutine s
 parameter(k=125)
    integer(1):: i(k),n(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
    addr = loc(n)
  if (addr /= loc(n)) print *,1
block
    integer(1):: i(k+1),n(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
    addr = loc(n)
  if (addr /= loc(n)) print *,1
end block
block
    integer(1):: i(k),n(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
    addr = loc(n)
  if (addr /= loc(n)) print *,1
end block
block
    integer(1):: i(k),n(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
    addr = loc(n)
  if (addr /= loc(n)) print *,1
end block
end
subroutine t
 parameter(k=125)
    integer(1):: i(k),n(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
    addr = loc(n)
  if (addr /= loc(n)) print *,1
block
    integer(1):: i(k),n(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
    addr = loc(n)
  if (addr /= loc(n)) print *,1
end block
block
    integer(1):: i(k),n(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
    addr = loc(n)
  if (addr /= loc(n)) print *,1
end block
block
    integer(1):: i(k),n(k)
    addr = loc(i)
  if (addr /= loc(i)) print *,1
    addr = loc(n)
  if (addr /= loc(n)) print *,1
end block
end
call s
call t
  print *,'OK'
end 

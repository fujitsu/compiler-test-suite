  COMPLEX*16 A
  A=(1.0E0,1.0D0)
call s(a%re)
call s(a%im)
print *,'pass'
end
subroutine s(d)
real(8)::d
if (d/=1.0) print *,101
end

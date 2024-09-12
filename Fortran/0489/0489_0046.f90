subroutine s(i)
use,intrinsic::iso_c_binding
real(4)   :: b(2)
integer(4)::i, a(c_sizeof( real(b,4) ))
a=1
end
call s(2)
print *,'pass'
end


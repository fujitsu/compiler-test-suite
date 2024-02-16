module m1
interface conjg
module procedure conjg4,conjg8
end interface
contains
function conjg8(c) result(r)
complex(8),dimension(4,3)::r,c
r=c*(2,2)
end function
function conjg4(c) result(r)
complex(4),dimension(4,3)::r,c
r=c*(2,2)
end function
end
subroutine s2
use m1
complex(8)::r81(4,3),r82(3)
complex(8)::r8(4)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r8=matmul(conjg(r81),r82)
if (any(abs((/r8/)-(/&
(-18160.0,0.00000E+00),(-18880.0,0.00000E+00),(-19600.0,0.00000E+00),(-20320.0,0.00000E+00)&
/))>10.))print *,2
end
subroutine s21
use m1
complex(4)::r81(4,3),r82(3)
complex(4)::r8(4)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r8=matmul(conjg(r81),r82)
if (any(abs((/r8/)-(/&
(-18160.0,0.00000E+00),(-18880.0,0.00000E+00),(-19600.0,0.00000E+00),(-20320.0,0.00000E+00)&
/))>10.))print*,4
end
calls2
calls21
print*,'pass'
end

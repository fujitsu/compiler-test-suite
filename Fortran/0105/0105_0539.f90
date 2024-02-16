module m1
contains
function tr4(a) result(r)
complex(4):: a(3,4),r(4,3)
r=transpose(a)
end function
function tr8(a) result(r)
complex(8):: a(3,4),r(4,3)
r=transpose(a)
end function
end
subroutine s2
use m1
complex(8)::r81(3,4),r82(3)
complex(8)::r8(4)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/3,4/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r8=matmul(conjg(tr8(r81)),r82)
if (any(abs((/r8/)-(/&
(5558.,-794.00),(6314.0,-902.00),(7070.0,-1010.0),(7826.0,-1118.0)&
/))>10.))print *,2
end
subroutine s21
use m1
complex(4)::r81(3,4),r82(3)
complex(4)::r8(4)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/3,4/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r8=matmul(conjg(tr4(r81)),r82)
if (any(abs((/r8/)-(/&
(5558.,-794.00),(6314.0,-902.00),(7070.0,-1010.0),(7826.0,-1118.0)&
/))>10.))print *,4
end
call s2
call s21
print *,'pass'
end

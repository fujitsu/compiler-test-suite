module m1
contains
subroutine s2(r81,r82,r8)
complex(8)::r81(:,:),r82(:)
complex(8)::r8(:)
r8=matmul(conjg(r81),r82)
if (any(abs((/r8/)-(/&
(6356.,-908.),(6608.,-944.0),(6860.,-980.0),(7112.,-1016.)&
/))>10.))print *,2
end subroutine
subroutine s21(r81,r82,r8)
complex(4)::r81(:,:),r82(:)
complex(4)::r8(:)
r8=matmul(conjg(r81),r82)
if (any(abs((/r8/)-(/&
(6356.,-908.),(6608.,-944.0),(6860.,-980.0),(7112.,-1016.)&
/))>10.))print *,4
end subroutine
subroutine s2a
complex(8),target::t81(2,4,3),t82(2,3)
complex(8),target::t8(2,4)
complex(8),pointer::r81(:,:),r82(:)
complex(8),pointer::r8(:)
r81=>t81(2,:,:)
r82=>t82(2,:)
r8=>t8(2,:)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
call       s2(r81,r82,r8)
end subroutine
subroutine s21a
complex(4),target::t81(2,4,3),t82(2,3)
complex(4),target::t8(2,4)
complex(4),pointer::r81(:,:),r82(:)
complex(4),pointer::r8(:)
r81=>t81(2,:,:)
r82=>t82(2,:)
r8=>t8(2,:)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
call       s21(r81,r82,r8)
end subroutine
end
use m1
call s2a
call s21a
print *,'pass'
end

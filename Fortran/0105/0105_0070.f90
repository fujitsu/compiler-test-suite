module m1
contains
subroutine s1(r81,r82,r8)
complex(8)::r81(:),r82(:,:)
complex(8)::r8(:)
r8=matmul(r81,conjg(r82))
if (any(abs((/r8/)-(/&
(5558.,-794.0),(6314.,-902.0),(7070.,-1010.),(7826.,-1118.)&
/) )>10.))print *,101
end subroutine
subroutine s2(r81,r82,r8)
complex(4)::r81(:),r82(:,:)
complex(4)::r8(:)
r8=matmul(r81,conjg(r82))
if (any(abs((/r8/)-(/&
(5558.,-794.0),(6314.,-902.0),(7070.,-1010.),(7826.,-1118.)&
/) )>10.))print *,101
end subroutine
subroutine s1a
complex(8),target::t81(2,3),t82(2,3,4)
complex(8),target::t8(2,4)
complex(8),pointer::r81(:),r82(:,:)
complex(8),pointer::r8(:)
r81=>t81(2,:)
r82=>t82(2,:,:)
r8=>t8(2,:)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/3,4/))
call s1(r81,r82,r8)
end subroutine
subroutine s2a
complex(4),target::t81(2,3),t82(2,3,4)
complex(4),target::t8(2,4)
complex(4),pointer::r81(:),r82(:,:)
complex(4),pointer::r8(:)
r81=>t81(2,:)
r82=>t82(2,:,:)
r8=>t8(2,:)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/3,4/))
call s2(r81,r82,r8)
end subroutine
end
use m1
call s1a
call s2a
print *,'pass'
end

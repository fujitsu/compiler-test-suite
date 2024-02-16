module m1
contains
subroutine s1(r81,r82,r83,r8)
complex(8)::r81(:),r82(:,:),r83(:,:)
complex(8)::r8(:)
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/(-2381,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,101
r8=matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/(-2724,3632),(-2832,3776),(-2940,3920),(-3048,4064)/))>10.))print *,201
end subroutine
subroutine s2(r81,r82,r83,r8)
complex(4)::r81(:),r82(:,:),r83(:,:)
complex(4)::r8(:)
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/(-2381,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,111
r8=matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/(-2724,3632),(-2832,3776),(-2940,3920),(-3048,4064)/))>10.))print *,211
end subroutine
subroutine s1a
complex(8),target::r81(2,3),r82(2,3,4),r83(2,4,3)
complex(8),target::r8(2,4)
complex(8),pointer::p81(:),p82(:,:),p83(:,:)
complex(8),pointer::p8(:)
p81=>r81(2,:)
p82=>r82(2,:,:)
p83=>r83(2,:,:)
p8=>r8(2,:)
p81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
p82=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
p83=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
call       s1(p81,p82,p83,p8)
end subroutine
subroutine s2a
complex(4),target::r81(2,3),r82(2,3,4),r83(2,4,3)
complex(4),target::r8(2,4)
complex(4),pointer::p81(:),p82(:,:),p83(:,:)
complex(4),pointer::p8(:)
p81=>r81(2,:)
p82=>r82(2,:,:)
p83=>r83(2,:,:)
p8=>r8(2,:)
p81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
p82=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
p83=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
call       s2(p81,p82,p83,p8)
end subroutine
end
use m1
call s1a
call s2a
print *,'pass'
end 

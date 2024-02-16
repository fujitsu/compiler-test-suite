module m1
contains
subroutine s2(r81,r82,r83,r8,add)
complex(8)::r81(:,:),r82(:),r83(:,:)
complex(8)::r8(:),add(:)
r8=r8+add+matmul(r81,r82)
if (any(abs((/r8/)-(13,24)-(/add/)-(/(-2724,3632),(-2832,3776),(-2940,3920),(-3048,4064)/))>10.))print *,2
r8=(13,24)
r8=r8+add+matmul(transpose(r83),r82)
if (any(abs((/r8/)-(13,24)-(/add/)-(/(-2382,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,3
end subroutine
subroutine s21(r81,r82,r83,r8,add)
complex(4)::r81(:,:),r82(:),r83(:,:)
complex(4)::r8(:),add(:)
r8=r8+add+matmul(r81,r82)
if (any(abs((/r8/)-(13,24)-(/add/)-(/(-2724,3632),(-2832,3776),(-2940,3920),(-3048,4064)/))>10.))print *,4
r8=(13,24)
r8=r8+add+matmul(transpose(r83),r82)
if (any(abs((/r8/)-(13,24)-(/add/)-(/(-2382,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,5
end subroutine
subroutine s2a
complex(8),pointer::r81(:,:),r82(:),r83(:,:)
complex(8),pointer::r8(:),add(:)
complex(8),target::t81(2,4,3),t82(2,3),t83(2,3,4)
complex(8),target::t8(2,4),tadd(2,4)
r81=>t81(2,:,:)
r82=>t82(2,:)
r83=>t83(2,:,:)
r8=>t8(2,:)
add=>tadd(2,:)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=(13,24)
add=(24,13)
call       s2(r81,r82,r83,r8,add)
end subroutine
subroutine s21a
complex(4),pointer::r81(:,:),r82(:),r83(:,:)
complex(4),pointer::r8(:),add(:)
complex(4),target::t81(2,4,3),t82(2,3),t83(2,3,4)
complex(4),target::t8(2,4),tadd(2,4)
r81=>t81(2,:,:)
r82=>t82(2,:)
r83=>t83(2,:,:)
r8=>t8(2,:)
add=>tadd(2,:)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=(13,24)
add=(24,13)
call       s21(r81,r82,r83,r8,add)
end subroutine
end
use m1
call s2a
call s21a
print *,'pass'
end

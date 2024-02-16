subroutine s1
complex(8)::r81(3),r82(3,4),r83(4,3)
complex(8)::r8(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r8=matmul(r81(:),r82(:,:))
if (any(abs((/r8/)-(/(-2381,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,101
r8=matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/(-2724,3632),(-2832,3776),(-2940,3920),(-3048,4064)/))>10.))print *,201
end
subroutine s2
complex(4)::r81(3),r82(3,4),r83(4,3)
complex(4)::r8(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r8=matmul(r81(:),r82(:,:))
if (any(abs((/r8/)-(/(-2381,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,111
r8=matmul(r81,transpose(r83))
if (any(abs((/r8/)-(/(-2724,3632),(-2832,3776),(-2940,3920),(-3048,4064)/))>10.))print *,211
end
call s1
call s2
print *,'pass'
end

subroutine s1
complex(8)::r81(3),r82(3,4),r83(4,3)
complex(8)::r8(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r8=matmul(r81+r81,r82+r82)
if (any(abs((/r8/)-(/&
(-9528.0,12704.),(-10824.,14432.),(-12120.,16160.),(-13416.,17888.)&
/))>10.))print *,101

r8=matmul(r81+r81,transpose(r83+r83))
if (any(abs((/r8/)-(/&
(-10896.,14528.),(-11328.,15104.),&
(-11760.,15680.),(-12192.,16256.)&
/))>10.))print *,201
end
call s1

print *,'pass'
end

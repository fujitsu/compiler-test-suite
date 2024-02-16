subroutine s2
complex(8)::r81(4,3),r82(3),r83(3,4)
complex(8)::r8(4)
complex(8)::cx=(103,401)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=cx
r8=r8*2+ matmul(r81,r82)
if (any(abs((/r8/)-(/&
(-2518.,4434.),(-2626.,4578.),(-2734.,4722.),(-2842.,4866.)&
/))>10.))print *,2
r8=cx
r8=r8*2.+matmul(transpose(r83),r82)

if (any(abs((/r8/)-(/&
(-2176.,3978.),(-2500.,4410.),(-2824.,4842.),(-3148.,5274.)&
/))>10.))print *,2
end
subroutine s21
complex(4)::r81(4,3),r82(3),r83(3,4)
complex(4)::r8(4)
complex(8)::cx=(103,401)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=cx
r8=r8*2.+ matmul(r81,r82)
if (any(abs((/r8/)-(/&
(-2518.,4434.),(-2626.,4578.),(-2734.,4722.),(-2842.,4866.)&
/))>10.))print *,2
r8=cx
r8=r8*2.+matmul(transpose(r83),r82)
if (any(abs((/r8/)-(/&
(-2176.,3978.),(-2500.,4410.),(-2824.,4842.),(-3148.,5274.)&
/))>10.))print *,2
end
call s2
call s21
print *,'pass'
end

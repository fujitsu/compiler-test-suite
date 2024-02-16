subroutine s2(r81,r82,r83,r8)
complex(8)::r81(4,3),r82(3),r83(3,4)
complex(8)::r8(4)
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/(-2724,3632),(-2832,3776),(-2940,3920),(-3048,4064)/))>10.))print *,2
r8=matmul(transpose(r83),r82)
if (any(abs((/r8/)-(/(-2382,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,3
end
subroutine s21(r81,r82,r83,r8)
complex(4)::r81(4,3),r82(3),r83(3,4)
complex(4)::r8(4)
r8=matmul(r81,r82)
if (any(abs((/r8/)-(/(-2724,3632),(-2832,3776),(-2940,3920),(-3048,4064)/))>10.))print *,4
r8=matmul(transpose(r83),r82)
if (any(abs((/r8/)-(/(-2382,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,5
end
subroutine s2a
complex(8)::r81(4,3),r82(3),r83(3,4)
complex(8)::r8(4)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
call       s2(r81,r82,r83,r8)
end
subroutine s21a
complex(4)::r81(4,3),r82(3),r83(3,4)
complex(4)::r8(4)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
call       s21(r81,r82,r83,r8)
end
call s2a
call s21a
print *,'pass'
end

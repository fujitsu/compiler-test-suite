subroutine s2
complex(8)::r81(4,3),r82(3)
complex(8)::r8(4)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r8=matmul(conjg(conjg(r81)),r82)
if (any(abs((/r8/)-(/&
(-4540.,4540.),(-4720.,4720.),(-4900.,4900.),(-5080.,5080.)&
/))>10.))print *,2
end
subroutine s21
complex(4)::r81(4,3),r82(3)
complex(4)::r8(4)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r8=matmul(conjg(conjg(r81)),r82)
if (any(abs((/r8/)-(/&
(-4540.,4540.),(-4720.,4720.),(-4900.,4900.),(-5080.,5080.)&
/))>10.))print *,4
end
call s2
call s21
print *,'pass'
end

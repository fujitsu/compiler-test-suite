subroutine s1
complex(8)::r81(3),r82(3,4),r83(4,3)
complex(8)::r8(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r8=matmul(r81,conjg(transpose(r83)))
if (any(abs((/r8/)-(/&
(4540.,0.000E+00),(4720.,0.000E+00),(4900.,0.000E+00),(5080.,0.000E+00)&
/))>10.))print *,201
end
subroutine s2
complex(4)::r81(3),r82(3,4),r83(4,3)
complex(4)::r8(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r8=matmul(r81,conjg(transpose(r83)))
if (any(abs((/r8/)-(/&
(4540.,0.000E+00),(4720.,0.000E+00),(4900.,0.000E+00),(5080.,0.000E+00)&
/))>10.))print *,211
end
call s1
call s2
print *,'pass'
end

subroutine s3
complex(8)::r81(4,3),r82(3,2),r83(2,3),r84(4,2),r85(2,4)
complex(8)::r8(4,2),x8(3,2)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,16)/),(/3,2/))
r83=reshape((/(cmplx(i,i+i),i=21,26)/),(/2,3/))
r84=reshape((/(cmplx(i,i+i),i=21,28)/),(/4,2/))
r85=reshape((/(cmplx(i,i+i),i=21,28)/),(/2,4/))
x8=matmul(     (transpose(r81)),conjg(transpose(r85)))
if (any(abs((/x8/)-(/&
(10850.,0.0000E+00),(12770.,0.0000E+00),(14690.,0.0000E+00),(11300.,0.0000E+00),(13300.,0.0000E+00),(15300.,0.0000E+00)&
/))>10.))print *,403
end
subroutine s31
complex(4)::r81(4,3),r82(3,2),r83(2,3),r84(4,2),r85(2,4)
complex(4)::r8(4,2),x8(3,2)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,16)/),(/3,2/))
r83=reshape((/(cmplx(i,i+i),i=21,26)/),(/2,3/))
r84=reshape((/(cmplx(i,i+i),i=21,28)/),(/4,2/))
r85=reshape((/(cmplx(i,i+i),i=21,28)/),(/2,4/))
x8=matmul(     (transpose(r81)),conjg(transpose(r85)))
if (any(abs((/x8/)-(/&
(10850.,0.0000E+00),(12770.,0.0000E+00),(14690.,0.0000E+00),(11300.,0.0000E+00),(13300.,0.0000E+00),(15300.,0.0000E+00)&
/))>10.))print *,403
end
call s3
call s31
print *,'pass'
end

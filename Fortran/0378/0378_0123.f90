subroutine s2
real(16)::z=2
real(8)::r81(4,3),r82(3),r83(3,4)
real(8)::r8(4)
real(8)::cx=(103,401)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=cx
r8=matmul(r81,r82)+z*r8
if (any(abs((/r8/)-(/&
1114,1150,1186,1222&
/))>10.))print *,2
r8=cx
r8=matmul(transpose(r83),r82)+2._16*r8
if (any(abs((/r8/)-(/&
1000,1108,1216,1324&
/))>10.))print *,2
end
subroutine s21
real(4)::r81(4,3),r82(3),r83(3,4)
real(4)::r8(4)
real(8)::cx=(103,401)
real(16)::z=2
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=cx
r8=matmul(r81,r82)+2._8*r8
if (any(abs((/r8/)-(/&
1114,1150,1186,1222&
/))>10.))print *,2
r8=cx
r8=matmul(transpose(r83),r82)+z*r8
if (any(abs((/r8/)-(/&
1000,1108,1216,1324&
/))>10.))print *,2
end
call s2
call s21
print *,'pass'
end

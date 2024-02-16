subroutine s2
real(8)::r81(4,3),r82(3),r83(3,4)
real(8)::r8(4),z(4)
real(8)::cx=(103,401)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
z=cx
r8=cx
r8=matmul(r81,r82)+r8*z
if (any(abs((/r8/)-(/&
11517.,11553.,11589.,11625.&
/))>10.))print *,21
r8=cx
r8=matmul(transpose(r83),r82)+r8*z

if (any(abs((/r8/)-(/&
11403.0,11511.0,11619.0,11727.&
/))>10.))print *,22
end
subroutine s21
real(4)::r81(4,3),r82(3),r83(3,4)
real(4)::r8(4),z(4)
real(8)::cx=(103,401)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
z=cx
r8=cx
r8=matmul(r81,r82)+r8*z
if (any(abs((/r8/)-(/&
11517.,11553.,11589.,11625.&
/))>10.))print *,23
r8=cx
r8=matmul(transpose(r83),r82)+r8*z
if (any(abs((/r8/)-(/&
11403.0,11511.0,11619.0,11727.&
/))>10.))print *,24
end
call s2
call s21
print *,'pass'
end

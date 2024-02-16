subroutine s2
complex(8)::r81(4,3),r82(3),r83(3,4)
complex(8)::r8(4),z(4)
complex(8)::cx=(103,401)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
z=cx
r8=cx
r8=matmul(r81,r82)+r8*z
if (any(abs((/r8/)-(/&
(-152916.0,86238.00),(-153024.0,86382.00),(-153132.0,86526.00),(-153240.0,86670.00)&
/))>10.))print *,21
r8=cx
r8=matmul(transpose(r83),r82)+r8*z

if (any(abs((/r8/)-(/&
(-152574.0,85782.0),(-152898.,86214.0),(-153222.,86646.0),(-153546.,87078.0)&
/))>10.))print *,22
end
subroutine s21
complex(4)::r81(4,3),r82(3),r83(3,4)
complex(4)::r8(4),z(4)
complex(8)::cx=(103,401)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
z=cx
r8=cx
r8=matmul(r81,r82)+r8*z
if (any(abs((/r8/)-(/&
(-152916.0,86238.00),(-153024.0,86382.00),(-153132.0,86526.00),(-153240.0,86670.00)&
/))>10.))print *,23
r8=cx
r8=matmul(transpose(r83),r82)+r8*z
if (any(abs((/r8/)-(/&
(-152574.0,85782.0),(-152898.,86214.0),(-153222.,86646.0),(-153546.,87078.0)&
/))>10.))print *,24
end
call s2
call s21
print *,'pass'
end

subroutine s2
complex(8)::r81(4,3),r82(3),r83(3,4)
complex(8)::r8(4)
complex(8)::cx=(103,401)
real(8)::z(2)=(/0,2/)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=cx
r8=matmul(r81,r82)+z(2)*r8
if (any(abs((/r8/)-z(2)*cx-(/(-2724,3632),(-2832,3776),(-2940,3920),(-3048,4064)/))>10.))print *,2
r8=cx
k=2
r8=matmul(transpose(r83),r82)+z(k)*r8
if (any(abs((/r8/)-z(2)*cx-(/(-2382,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,3
end
subroutine s21
complex(4)::r81(4,3),r82(3),r83(3,4)
complex(4)::r8(4)
complex(8)::cx=(103,401)
real::z(2)=(/0,2/)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r83=reshape((/(cmplx(i,i+i),i=21,32)/),(/3,4/))
r8=cx
r8=matmul(r81,r82)+r8*z(2)
if (any(abs((/r8/)-z(2)*cx-(/(-2724,3632),(-2832,3776),(-2940,3920),(-3048,4064)/))>10.))print *,4
r8=cx
k=2
r8=matmul(transpose(r83),r82)+r8*z(k)
if (any(abs((/r8/)-z(2)*cx-(/(-2382,3176),(-2706,3608),(-3030,4040),(-3354,4472)/))>10.))print *,5
end
call s2
call s21
print *,'pass'
end

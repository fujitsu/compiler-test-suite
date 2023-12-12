subroutine s1
complex(8)::r81(3),r82(3,4)
complex(8)::r8(4),z(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/3,4/))
z(:3)=r81
z=matmul(z(:3),r82)
r8=z
if (any(abs((/r8/)-(/&
 (-3970.,3970.),(-4510.,4510.),(-5050.,5050.),(-5590.,5590.)&
/) )>10.))print *,101
end
subroutine s2
complex(8)::r81(3),r82(3,4)
complex(8)::r8(4),z(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/3,4/))
z(:3)=r81
r82(1,:)=matmul(z(:3),r82)
r8=r82(1,:)
if (any(abs((/r8/)-(/&
 (-3970.,3970.),(-4510.,4510.),(-5050.,5050.),(-5590.,5590.)&
/) )>10.))print *,101
end
call s1
call s2
print *,'OK'
end

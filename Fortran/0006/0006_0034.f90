subroutine s1
complex(8)::r81(3),r82(4,3)
complex(8)::r8(4),z(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
z(:3)=r81
z=matmul(r82,z(:3))
r8=z
if (any(abs((/r8/)-(/&
(-4540.,4540.),(-4728.,4720.),(-4900.,4900.),(-5080.,5080.) &
/) )>10.))print *,101,r8
end
subroutine s2
complex(8)::r81(3),r82(4,3)
complex(8)::r8(4),z(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
z(:3)=r81
r82(:,2)=matmul(r82,z(:3))
r8=r82(:,2)
if (any(abs((/r8/)-(/&
(-4540.,4540.),(-4728.,4720.),(-4900.,4900.),(-5080.,5080.) &
/) )>10.))print *,101,r8
end
call s1
call s2
print *,'OK'
end

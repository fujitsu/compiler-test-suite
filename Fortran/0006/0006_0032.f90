subroutine s1
complex(8)::r81(3),r82(3,4)
complex(8)::r8(4),z(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/3,4/))
z(:3)=r81
z=matmul(z(:3),conjg(r82))
r8=z
if (any(abs((/r8/)-(/&
(5558.,-794.0),(6314.,-902.0),(7070.,-1010.),(7826.,-1118.)&
/) )>10.))print *,101
r82(2,:)=matmul(r81,conjg(r82))
r8=r82(2,:)
if (any(abs((/r8/)-(/&
(5558.,-794.0),(6314.,-902.0),(7070.,-1010.),(7826.,-1118.)&
/) )>10.))print *,111
end
subroutine s2
complex(4)::r81(3),r82(3,4)
complex(4)::r8(4),z(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/3,4/))
z(:3)=r81
z=matmul(z(:3),conjg(r82))
r8=z
if (any(abs((/r8/)-(/&
(5558.,-794.0),(6314.,-902.0),(7070.,-1010.),(7826.,-1118.)&
/) )>10.))print *,101
r82(2,:)=matmul(r81,conjg(r82))
r8=r82(2,:)
if (any(abs((/r8/)-(/&
(5558.,-794.0),(6314.,-902.0),(7070.,-1010.),(7826.,-1118.)&
/) )>10.))print *,111
end
call s1
call s2
print *,'OK'
end

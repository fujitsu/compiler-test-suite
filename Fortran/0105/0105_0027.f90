subroutine s3
complex(8)::r81(4,3),r82(3)
complex(8)::r8(4)
complex(4)::c(2)=(/(0,0),(3,4)/)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r8=c(2)*matmul(conjg(r81),r82)
if (any(abs((/r8/)-c(2)*(/&
(6356.,-908.),(6608.,-944.0),(6860.,-980.0),(7112.,-1016.)&
/))>10.))print *,2
k=2
r8=c(k)*matmul(conjg(r81),r82)
if (any(abs((/r8/)-c(2)*(/&
(6356.,-908.),(6608.,-944.0),(6860.,-980.0),(7112.,-1016.)&
/))>10.))print *,2
end
call s3
print *,'pass'
end

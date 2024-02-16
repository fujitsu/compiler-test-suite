subroutine s2(r81,r82,r8)
complex(8)::r81(4,3),r82(3)
complex(8)::r8(4)
r8=matmul(conjg(r81),r82)
if (any(abs((/r8/)-(/&
(6356.,-908.),(6608.,-944.0),(6860.,-980.0),(7112.,-1016.)&
/))>10.))print *,2
end
subroutine s21(r81,r82,r8)
complex(4)::r81(4,3),r82(3)
complex(4)::r8(4)
r8=matmul(conjg(r81),r82)
if (any(abs((/r8/)-(/&
(6356.,-908.),(6608.,-944.0),(6860.,-980.0),(7112.,-1016.)&
/))>10.))print *,4
end
subroutine s2a
complex(8)::r81(4,3),r82(3)
complex(8)::r8(4)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
call       s2(r81,r82,r8)
end
subroutine s21a
complex(4)::r81(4,3),r82(3)
complex(4)::r8(4)
r81=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
call       s21(r81,r82,r8)
end
call s2a
call s21a
print *,'pass'
end

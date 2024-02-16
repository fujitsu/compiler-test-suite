subroutine s1(r81,r82,r8)
complex(8)::r81(3),r82(3,4)
complex(8)::r8(4)
r8=matmul(r81,conjg(r82))
if (any(abs((/r8/)-(/&
(5558.,-794.0),(6314.,-902.0),(7070.,-1010.),(7826.,-1118.)&
/) )>10.))print *,101
end
subroutine s2(r81,r82,r8)
complex(4)::r81(3),r82(3,4)
complex(4)::r8(4)
r8=matmul(r81,conjg(r82))
if (any(abs((/r8/)-(/&
(5558.,-794.0),(6314.,-902.0),(7070.,-1010.),(7826.,-1118.)&
/) )>10.))print *,101
end
subroutine s1a
complex(8)::r81(3),r82(3,4)
complex(8)::r8(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/3,4/))
call s1(r81,r82,r8)
end
subroutine s2a
complex(4)::r81(3),r82(3,4)
complex(4)::r8(4)
r81=reshape((/(cmplx(i,i+i),i=11,14)/),(/3/))
r82=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/3,4/))
call s2(r81,r82,r8)
end
call s1a
call s2a
print *,'pass'
end

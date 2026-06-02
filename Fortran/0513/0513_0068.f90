call s1
call s2
print *,'pass'
contains
subroutine s1
  real,parameter::r1=gamma(1.)
  real,parameter::r2=log_gamma(1.)
  logical,parameter::i(1)=IS_CONTIGUOUS([integer::])
  if(r1/=gamma(1.)) print *,'err1'
  if(r2/=log_gamma(1.)) print *,'err2'
if(any(i.neqv.[.true.])) print *,'err3'
end subroutine s1
subroutine s2
  integer,parameter::i1=rank(a=[1])
  integer::i2
  i2=rank(A=[1])
  if(i1/=i2) print *,'err4',i1,i2
end subroutine s2
end

  integer,parameter::n1=rank(a=[1])
  integer,parameter::n2=kind(rank(a=[1]))
  integer,parameter::k1=ubound([1],1)
  integer,parameter::k2=kind(ubound([1],1))
  if (rank(A=[1]) /= n1) print *,201,rank(A=[1]), n1
  if (kind(rank(A=[1])) /= n2) print *,202,kind(rank(A=[1])),n2
  if (ubound([1],1)/= k1) print *,301
  if (kind(ubound([1],1))/= k2) print *,302
if (kind(rank(A=[1]))/=8) print *,801
if (kind(ubound([1],1))/=8) print *,802
print *,'pass'
end program

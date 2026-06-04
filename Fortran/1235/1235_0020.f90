IMPLICIT NONE
integer::n,p
parameter ( p=1 )
n=2
associate( k=> n)
  block
   integer,dimension(p,k) ::ary
    if (size(ary)/=2) print *,1001
    ary(1,2)=2
    if (ary(1,2)/=2) print *,800
  end block
end associate
print *,'pass'
end


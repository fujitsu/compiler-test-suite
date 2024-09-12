  integer,parameter::x(&
1,2,3) &
=1
  integer,parameter::k(&
1,2,3) &
= &
eoshift( array=x , shift=1,dim=3 )
call chk([1,1,1,1,0,0],k,size(k))
print *,'pass'
end
subroutine chk(n1,n2,mm)
integer::n1(*),n2(*)
if (any(n1(:mm)/=n2(:mm))) print *,1002
end

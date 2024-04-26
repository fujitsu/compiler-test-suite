integer:: a(2,6)/12*1/

forall (n0=1:3,n0>=1)
  a(     1:2,n0+1)=a(1:2,n0)+2
end forall
if (any([a]/=[1,1,3,3,3,3,3,3,1,1,1,1])) print *,101,a
print *,'pass'
end

parameter( k0= kind( index('ba','a') ) )
parameter( k1= kind( index('ba','a',kind=8) ) )
parameter( k2= kind( index('ba','a',kind=1) ) )
parameter( k3= kind( index('ba','a',kind=2) ) )
parameter( k4= kind( index('ba','a',kind=4) ) )
parameter( k5= kind( index('ba','a',kind=8) ) )
n0= kind( index('ba','a') )
n1= kind( index('ba','a',kind=8) )
n2= kind( index('ba','a',kind=1) )
n3= kind( index('ba','a',kind=2) )
n4= kind( index('ba','a',kind=4) )
n5= kind( index('ba','a',kind=8) )
if (n0/=k0) print *,100 , n0 , k0
if (n1/=k1) print *,101,n1,k1
if (n2/=k2) print *,102,n2,k2
if (n3/=k3) print *,103,n3,k3
if (n4/=k4) print *,104,n4,k4
if (n5/=k5) print *,105,n5,k5
print *,'pass'
end

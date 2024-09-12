parameter( k0= kind( ichar('a') ) )
parameter( k1= kind( ichar('a',kind=8) ) )
parameter( k2= kind( ichar('a',kind=1) ) )
parameter( k3= kind( ichar('a',kind=2) ) )
parameter( k4= kind( ichar('a',kind=4) ) )
parameter( k5= kind( ichar('a',kind=8) ) )
n0= kind( ichar('a') )
n1= kind( ichar('a',kind=8) )
n2= kind( ichar('a',kind=1) )
n3= kind( ichar('a',kind=2) )
n4= kind( ichar('a',kind=4) )
n5= kind( ichar('a',kind=8) )
if (n0/=k0) print *,100 , n0 , k0
if (n1/=k1) print *,101
if (n2/=k2) print *,102
if (n3/=k3) print *,103
if (n4/=k4) print *,104
if (n5/=k5) print *,105
print *,'pass'
end

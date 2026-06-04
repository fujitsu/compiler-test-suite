integer,parameter :: n = 10
integer*4 :: a(n)=0, b(n)=0, c=0, d=999999

forall ( i=1:n , i <=  8 )
  a(i) = mod(i,3)
  b(i) = a(i) + i
  c    = max(c,b(i))
  d    = min(d,b(i))
end forall
if ( any(a/=(/1,2,0,1,2,0,1,2,0,0/) ) ) print *,'fail'
if ( any(b/=(/2,4,3,5,7,6,8,10,0,0/) ) ) print *,'fail'
if ( c/=10 ) print *,'fail'
if ( d/=10 ) print *,'fail'
print *,'pass'
end

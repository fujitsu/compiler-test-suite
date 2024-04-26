complex(4) :: a,b
data a%re /(1.0,10.0)/
data a%im /(2.0,10.0)/
b%re=1.0
b%im=2.0
if (abs(b%re-(1,0)) > 0.001) print *,'err'
if (abs(b%im-(2,0)) > 0.001) print *,'err'
if (abs(a%re-(1,0)) > 0.001) print *,'err'
if (abs(a%im-(2,0)) > 0.001) print *,'err'
print *,'pass'
end

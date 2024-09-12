real x(1),y(2,1)
x = 4.0
y = reshape ( [ 1.,[x] ], [2,1] )
if (any(abs((/y/)-(/1,4/))>0.001))print *,y
print *,'pass'
end

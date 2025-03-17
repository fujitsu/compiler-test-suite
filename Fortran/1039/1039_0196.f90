integer(8),parameter:: i=1
real   (4),parameter:: r=1
if (kind((i,i))/=4)write(6,*) "NG"
if (kind((1_8,1_8))/=4)write(6,*) "NG"
if (kind((r,i))/=4)write(6,*) "NG"
if (kind((i,r))/=4)write(6,*) "NG"
if (kind((1.,1_8))/=4)write(6,*) "NG"
if (kind((1_8,1.))/=4)write(6,*) "NG"
print *,'pass'
end

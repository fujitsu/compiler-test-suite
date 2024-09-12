real(16),parameter :: r=1,i=-1
complex(16),parameter:: c1=(r,r),c2=(i,i)
complex(16),parameter:: c= merge( c1,c2,.false.) 
complex(16),parameter:: x= merge( c1,c2,.true.) 
if (c/=c2) print *,101,c,c2
if (x/=c1) print *,102,x,c1
print *,'pass'
end

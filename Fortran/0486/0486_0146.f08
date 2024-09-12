subroutine s1
real(16),parameter:: r1=1.0_16 , r2= 100.0_16 
real(16)          :: v1=r1     , v2= r2 
complex(16),parameter:: c1=(r1,r2) , c2= (r2,r1)  
complex(16)          :: w1=c1     , w2= c2 

real(16),parameter:: x1= merge (  r1, r2 , .true.) 
real(16),parameter:: x2= merge (  r1, r2 , .false.) 
complex(16),parameter:: y1= merge (  c1, c2 , .true.) 
complex(16),parameter:: y2= merge (  c1, c2 , .false.) 

real(16):: g1,g2
complex(16):: h1,h2

logical:: t=.true. , F=.false.

g1=merge (  v1, v2 , T)
g2=merge (  v1, v2 , F)
h1=merge (  w1, w2 , T)
h2=merge (  w1, w2 , F)

if ( g1/=x1) print *,101,g1,x1
if ( g2/=x2) print *,102,g2,x2
if ( h1/=y1) print *,103,h1,y1
if ( h2/=y2) print *,104,h2,y2

end 
subroutine s2
real(16),parameter:: r1=1.0_16 , r2= 100.0_16 
complex(16),parameter:: c1=(r1,r2)   
complex(16)          :: w1=c1     

complex(16),parameter:: y1= conjg (  c1 ) 

complex(16):: h1

h1=conjg (  w1 )

if (     h1/=y1              ) print *,105,h1,y1

end 

call s1
call s2
print *,'pass'
end

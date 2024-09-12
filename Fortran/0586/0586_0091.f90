integer, DIMENSION (2,2,2,2,2,2,2,2) :: SKEW
integer,pointer::ptr
integer,target::t1=1
integer::K,J,L,M,N,O,P,R
DATA ((((((((SKEW (K,J,L,M,N,O,P,R), J = 1, 2), K = 1, 2),L=1,2),M=1,2),N = 1, 2), O= 1,2),P=1,2),R=1,2),ptr /256*1,0*200,t1/
if(SKEW(1,1,1,1,1,1,1,1).ne.1)print*,"102"
if(SKEW(2,2,2,2,2,2,2,2).ne.1)print*,"102"
if(ptr.ne.1)print*,"103"
if(t1.ne.1)print*,"104"
print*,"PASS"
end

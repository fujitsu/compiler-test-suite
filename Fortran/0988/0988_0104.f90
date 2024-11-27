parameter(n=30)
real r1a(n),r1b(n),r1c(n)
common /cblock/ r1a,r1b,r1c
integer i1a(10)/2,3,4,5,6,7,8,9,10,1/
m=int(cos(0.0))
do i=1,i1a(8),m*m*m*m*m
   r1a(i) = r1a(i+1)-r1b(i)
enddo
end

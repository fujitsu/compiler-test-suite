parameter(n=30)
real r1a(n),r1b(n),r1c(n)
real r0a
complex c0a
common /cblock/ r1a,r1b,r1c
equivalence (r1a(1),r0a,c0a)
do i=1,n
   r0a = r1a(i)
   c0a = cmplx(r0a,r0a)
   r1a(i) = sqrt(abs(c0a))
enddo
end

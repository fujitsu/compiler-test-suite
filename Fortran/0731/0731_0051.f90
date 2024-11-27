Program test
 Integer, parameter :: N=64
 Real :: F1(N,N),F(N,N),r
 F1=1.0d0
 F=1.0d0
 r=Dot_product(Reshape(F1-F,(/N*N/)),Reshape(F1-F,(/N*N/)))
 if (abs(r-0.0001)>0.0001)write(6,*) "NG"
print *,'pass'
end


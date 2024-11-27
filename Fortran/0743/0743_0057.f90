logical ::a(5)=.true.,b(5)=.true.
real,dimension(5,15) ::c1(5,15),c2(15),c3(15),c4(15,5),c(5),d(6),e(5)
real,dimension(5,15) ::f11(5,15),f21(15),f31(15),f41(15,5),f(5)
real,dimension(5,15) ::f12(5,15),f22(15),f32(15),f42(15,5)
c1=0.3; c2=0.3; c3=0.3; c4=0.3
f11=0.4; f12=0.5; f21=0.4; f22=0.5; f31=0.4; f32=0.5; f41=0.4; f42=0.5
where (a.and.b)
c=matmul(c1,c2)+matmul(c3,c4)
f=matmul(f11+f12,f21+f22)+matmul(f31+f32,f41+f42)
c=c+f
d(1:5)=c
d(2:6)=d(1:5)+2.0
e=d(1:5)
d(2:6)=e
c=d(2:6)+c+d(1)
end where
if (any(abs(c-(/81,83,83,83,83/))>0.001))print *,'error'
print *,'pass'
end

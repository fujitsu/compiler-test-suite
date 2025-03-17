i1=0;i2=0;i3=0;i4=0;i5=5;i6=6;i7=7;i8=0;i9=9
k1=1;k2=2;k3=3;k4=4;k5=5;k6=6;k7=7;k8=8;k9=9
if ((((((i1.eq.k1.and.i2.eq.k2).or.     &
       i3.eq.k3).or.i4.eq.k4).or.i5.eq.k5).and.(i6.eq.k6.and.i7.eq.k7)).and. &
       (i8.eq.k8.or.i9.eq.k9)) then
 n=1
else
 write(6,*) "NG"
endif

if (n/=1) write(6,*) "NG"
print *,'pass'
end

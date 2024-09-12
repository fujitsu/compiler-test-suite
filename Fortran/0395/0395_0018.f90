subroutine ss0(i)
parameter(j=-3)
integer a
real(4)::b1(i),b2(j,i),b3(j,i,j),b4(j,i,j,i),b5(j,i,j,i,j),b6(j,i,j,i,j,i)
b1=1.;b2=1.;b3=1.;b4=1.;b5=1.;b6=1.
write(31,*)dble(b1),dble(b2),dble(b3),dble(b4),dble(b5),dble(b6),        dble(b6)+dble(b6)
end
call ss0(-3)
print *,'pass'
end

subroutine ss0(i)
parameter(j=-3)
real(4)::b5(j,i,j,i,j),b6(j,i,j,i,j,i)
b5=1.;b6=1.
write(1,*)     b5,'x1',     dble(b6),'x2',  b6+b6
end
call ss0(-3)
print *,'pass'
end

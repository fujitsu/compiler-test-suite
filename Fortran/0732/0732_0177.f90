subroutine ss0(i)
parameter(j=-3)
integer a
real(4)::b1(i),b2(j,i),b3(j,i,j),b4(j,i,j,i),b5(j,i,j,i,j),b6(j,i,j,i,j,i)
real(4)::c1(j),c2(i,j),c3(i,j,i),c4(i,j,i,j),c5(i,j,i,j,i),c6(i,j,i,j,i,j)
b1=1.;b2=1.;b3=1.;b4=1.;b5=1.;b6=1.
c1=1.;c2=1.;c3=1.;c4=1.;c5=1.;c6=1.
write(155,*)dble(b1),dble(b2),dble(b3),dble(b4),dble(b5),dble(b6),dble(b6)+dble(b6)
write(156,*)dble(c1),dble(c2),dble(c3),dble(c4),dble(c5),dble(c6),dble(c6)+dble(c6)
write(157,*)sin(b1),sin(b2),sin(b3),sin(b4),sin(b5),sin(b6),sin(b6)+sin(b6)
write(158,*)sin(c1),sin(c2),sin(c3),sin(c4),sin(c5),sin(c6),sin(c6)+sin(c6)
write(151)dble(b1),dble(b2),dble(b3),dble(b4),dble(b5),dble(b6),dble(b6)+dble(b6),1
write(152)dble(c1),dble(c2),dble(c3),dble(c4),dble(c5),dble(c6),dble(c6)+dble(c6),1
write(153)sin(b1),sin(b2),sin(b3),sin(b4),sin(b5),sin(b6),sin(b6)+sin(b6),1
write(154)sin(c1),sin(c2),sin(c3),sin(c4),sin(c5),sin(c6),sin(c6)+sin(c6),1
rewind 151;rewind 152
rewind 153;rewind 154
rewind 155;rewind 156
rewind 157;rewind 158
read(155,*,end=31)a;print *,'error 31'
31 continue
read(156,*,end=32)a;print *,'error 32'
32 continue
read(157,*,end=41)a;print *,'error 41'
41 continue
read(158,*,end=42)a;print *,'error 42'
42 continue
read(151)a;if (a/=1)print *,'error 11'
read(152)a;if (a/=1)print *,'error 12'
read(153)a;if (a/=1)print *,'error 21'
read(154)a;if (a/=1)print *,'error 22'
end
call ss0(-3)
print *,'pass'
end

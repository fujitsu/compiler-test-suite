subroutine ss0(i)
parameter(j=-3)
integer a
real(4),allocatable::b1(:),b2(:,:),b3(:,:,:),b4(:,:,:,:),b5(:,:,:,:,:),b6(:,:,:,:,:,:)
real(4)::c1(j),c2(j,j),c3(j,j,j),c4(j,j,j,j),c5(j,j,j,j,j),c6(j,j,j,j,j,j)
allocate(b1(i),b2(i,i),b3(i,i,i),b4(i,i,i,i),b5(i,i,i,i,i),b6(i,i,i,i,i,i))
b1=1.;b2=1.;b3=1.;b4=1.;b5=1.;b6=1.
c1=1.;c2=1.;c3=1.;c4=1.;c5=1.;c6=1.
write(147,*)dble(b1),dble(b2),dble(b3),dble(b4),dble(b5),dble(b6),dble(b6)+dble(b6)
write(148,*)dble(c1),dble(c2),dble(c3),dble(c4),dble(c5),dble(c6),dble(c6)+dble(c6)
write(149,*)sin(b1),sin(b2),sin(b3),sin(b4),sin(b5),sin(b6),sin(b6)+sin(b6)
write(150,*)sin(c1),sin(c2),sin(c3),sin(c4),sin(c5),sin(c6),sin(c6)+sin(c6)
write(143)dble(b1),dble(b2),dble(b3),dble(b4),dble(b5),dble(b6),dble(b6)+dble(b6),1
write(144)dble(c1),dble(c2),dble(c3),dble(c4),dble(c5),dble(c6),dble(c6)+dble(c6),1
write(145)sin(b1),sin(b2),sin(b3),sin(b4),sin(b5),sin(b6),sin(b6)+sin(b6),1
write(146)sin(c1),sin(c2),sin(c3),sin(c4),sin(c5),sin(c6),sin(c6)+sin(c6),1
rewind 143;rewind 144
rewind 145;rewind 146
rewind 147;rewind 148
rewind 149;rewind 150
read(147,*,end=31)a;print *,'error 31'
31 continue
read(148,*,end=32)a;print *,'error 32'
32 continue
read(149,*,end=41)a;print *,'error 41'
41 continue
read(150,*,end=42)a;print *,'error 42'
42 continue
read(143)a;if (a/=1)print *,'error 11'
read(144)a;if (a/=1)print *,'error 12'
read(145)a;if (a/=1)print *,'error 21'
read(146)a;if (a/=1)print *,'error 22'
end
call ss0(-3)
print *,'pass'
end

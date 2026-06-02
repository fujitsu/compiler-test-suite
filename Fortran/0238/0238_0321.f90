subroutine s1
logical,parameter::t=.true.
logical(8):: c2=t,c3=t
logical(4):: d2=t,d3=t
integer(8):: e2=1,e3=1
integer(4):: f2=1,f3=1
if (merge(1,0,d2)>=merge(1,0,d3))goto 16
write(14,*)317
16 continue
if (merge(1,0,c2)>=merge(1,0,c3))goto 6
write(14,*)307
6 continue
k=0
if (f2>=merge(1,0,d3))k=k+1
if (merge(1,0,d2)>=f3)k=k+2
if (e2>=merge(1,0,c3))k=k+4
if (merge(1,0,c2)>=e3)k=k+8
!
if (f2>=merge(1,0,c3))k=k+16
if (merge(1,0,c2)>=f3)k=k+32
if (f2>=merge(1,0,c3))k=k+64
if (merge(1,0,c2)>=f3)k=k+128
!
write(14,*)k
!
write(14,*)merge(1,0,c2)+merge(1,0,c3)
write(14,*)merge(1,0,c2)-merge(1,0,c3)
write(14,*)merge(1,0,c2)*merge(1,0,c3)
write(14,*)merge(1,0,c2)/merge(1,0,c3)
!
write(14,*)merge(1,0,c2)+merge(1,0,d3)
write(14,*)merge(1,0,c2)+e3
write(14,*)merge(1,0,c2)+f3
!
write(14,*)merge(1,0,d2)+merge(1,0,c3)
write(14,*)merge(1,0,d2)+e3
write(14,*)merge(1,0,d2)+f3
!
write(14,*)e2+merge(1,0,c3)
write(14,*)e2+merge(1,0,d3)
write(14,*)e2+f3
!
write(14,*)f2+merge(1,0,c3)
write(14,*)f2+merge(1,0,d3)
write(14,*)f2+e3
call chk
end
call s1
print *,'pass'
end
subroutine chk
rewind 14
read(14,*) k;if(k/=255) print *,k
read(14,*) k;if(k/=2) print *,k
read(14,*) k;if(k/=0) print *,k
read(14,*) k;if(k/=1) print *,k
read(14,*) k;if(k/=1) print *,k
do n=1,12
read(14,*) k;if(k/=2) print *,k,n
end do
end

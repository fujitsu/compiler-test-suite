subroutine s1
integer(1)::a11=1,a12=1
integer(2)::a21=1,a22=1
integer(4)::a41=1,a42=1
integer(8)::a81=1,a82=1
real(4)::b41=1,b42=1
real(8)::b81=1,b82=1
real(16)::bx1=1,bx2=1
complex(4)::c41=(1,1),c42=(1,1)
complex(8)::c81=(1,1),c82=(1,1)
complex(16)::cx1=(1,1),cx2=(1,1)
logical(1)::d11=.true.,d12=.true.
logical(2)::d21=.true.,d22=.true.
logical(4)::d41=.true.,d42=.true.
logical(8)::d81=.true.,d82=.true.
!
k=0
if (merge(1,0,d21)>a12) k=k+1
if (merge(1,0,d21)>a22) k=k+2
if (merge(1,0,d21)>a42) k=k+4
if (merge(1,0,d21)>a82) k=k+8
if (merge(1,0,d21)>b42) k=k+16
if (merge(1,0,d21)>b82) k=k+32
if (merge(1,0,d21)>bx2) k=k+64
if (merge(1,0,d21)>merge(1,0,d12)) k=k+2048
if (merge(1,0,d21)>merge(1,0,d22)) k=k+2048*2
if (merge(1,0,d21)>merge(1,0,d42)) k=k+2048*4
if (merge(1,0,d21)>merge(1,0,d82)) k=k+2048*8
if (k/=0) print *,101
end
subroutine s2
integer(1)::a11=1,a12=1
integer(2)::a21=1,a22=1
integer(4)::a41=1,a42=1
integer(8)::a81=1,a82=1
real(4)::b41=1,b42=1
real(8)::b81=1,b82=1
real(16)::bx1=1,bx2=1
complex(4)::c41=(1,1),c42=(1,1)
complex(8)::c81=(1,1),c82=(1,1)
complex(16)::cx1=(1,1),cx2=(1,1)
logical(1)::d11=.true.,d12=.true.
logical(2)::d21=.true.,d22=.true.
logical(4)::d41=.true.,d42=.true.
logical(8)::d81=.true.,d82=.true.
!
k=0
if (merge(1,0,d21)/=a12) k=k+1
if (merge(1,0,d21)/=a22) k=k+2
if (merge(1,0,d21)/=a42) k=k+4
if (merge(1,0,d21)/=a82) k=k+8
if (merge(1,0,d21)/=b42) k=k+16
if (merge(1,0,d21)/=b82) k=k+32
if (merge(1,0,d21)/=bx2) k=k+64
if (merge(1,0,d21)/=c42) k=k+128
if (merge(1,0,d21)/=c82) k=k+512
if (merge(1,0,d21)/=cx2) k=k+1024
if (d21.neqv.d12) k=k+2048
if (d21.neqv.d22) k=k+2048*2
if (d21.neqv.d42) k=k+2048*4
if (d21.neqv.d82) k=k+2048*8
if (k/=1664) print *,102
end
subroutine s3
integer(1)::a11=1,a12=1
integer(2)::a21=1,a22=1
integer(4)::a41=1,a42=1
integer(8)::a81=1,a82=1
real(4)::b41=1,b42=1
real(8)::b81=1,b82=1
real(16)::bx1=1,bx2=1
complex(4)::c41=(1,1),c42=(1,1)
complex(8)::c81=(1,1),c82=(1,1)
complex(16)::cx1=(1,1),cx2=(1,1)
logical(1)::d11=.true.,d12=.true.
logical(2)::d21=.true.,d22=.true.
logical(4)::d41=.true.,d42=.true.
logical(8)::d81=.true.,d82=.true.
!
k=0
write(17,*)merge(1,0,d21)+a12
write(17,*)merge(1,0,d21)+a22
write(17,*)merge(1,0,d21)+a42
write(17,*)merge(1,0,d21)+a82
write(17,*)merge(1,0,d21)+b42
write(17,*)merge(1,0,d21)+b82
write(17,*)merge(1,0,d21)+bx2
write(17,*)merge(1,0,d21)+c42
write(17,*)merge(1,0,d21)+c82
write(17,*)merge(1,0,d21)+cx2
write(17,*)merge(1,0,d21)+merge(1,0,d12)
write(17,*)merge(1,0,d21)+merge(1,0,d22)
write(17,*)merge(1,0,d21)+merge(1,0,d42)
write(17,*)merge(1,0,d21)+merge(1,0,d82)
call chk
end
call s1
call s2
call s3
print *,'pass'
end
subroutine chk
complex c
rewind 17
read(17,*) k;if (k/=2) print *,101
read(17,*) k;if (k/=2) print *,102
read(17,*) k;if (k/=2) print *,103
read(17,*) k;if (k/=2) print *,104
read(17,*) a;if (a/=2) print *,105
read(17,*) a;if (a/=2) print *,106
read(17,*) a;if (a/=2) print *,107
read(17,*) c;if (c/=(2,1)) print *,108
read(17,*) c;if (c/=(2,1)) print *,109
read(17,*) c;if (c/=(2,1)) print *,110
read(17,*) k;if (k/=2) print *,111
read(17,*) k;if (k/=2) print *,112
read(17,*) k;if (k/=2) print *,113
read(17,*) k;if (k/=2) print *,114
end

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
if (a12> merge(1,0,d81)) k=k+1
if (a22> merge(1,0,d81)) k=k+2
if (a42> merge(1,0,d81)) k=k+4
if (a82> merge(1,0,d81)) k=k+8
if (b42> merge(1,0,d81)) k=k+16
if (b82> merge(1,0,d81)) k=k+32
if (bx2> merge(1,0,d81)) k=k+64
if (merge(1,0,d12)> merge(1,0,d81)) k=k+2048
if (merge(1,0,d22)> merge(1,0,d81)) k=k+2048*2
if (merge(1,0,d42)> merge(1,0,d81)) k=k+2048*4
if (merge(1,0,d82)> merge(1,0,d81)) k=k+2048*8
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
if (a12/= merge(1,0,d81))k=k+1
if (a22/= merge(1,0,d81))k=k+2
if (a42/= merge(1,0,d81))k=k+4
if (a82/= merge(1,0,d81))k=k+8
if (b42/= merge(1,0,d81))k=k+16
if (b82/= merge(1,0,d81))k=k+32
if (bx2/= merge(1,0,d81))k=k+64
if (c42/= merge(1,0,d81))k=k+128
if (c82/= merge(1,0,d81))k=k+512
if (cx2/= merge(1,0,d81))k=k+1024
if (d12.neqv. d81)k=k+2048
if (d22.neqv. d81)k=k+2048*2
if (d42.neqv. d81)k=k+2048*4
if (d82.neqv. d81)k=k+2048*8
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
write(19,*)a12+merge(1,0,d81)
write(19,*)a22+merge(1,0,d81)
write(19,*)a42+merge(1,0,d81)
write(19,*)a82+merge(1,0,d81)
write(19,*)b42+merge(1,0,d81)
write(19,*)b82+merge(1,0,d81)
write(19,*)bx2+merge(1,0,d81)
write(19,*)c42+merge(1,0,d81)
write(19,*)c82+merge(1,0,d81)
write(19,*)cx2+merge(1,0,d81)
write(19,*)merge(1,0,d12)+merge(1,0,d81)
write(19,*)merge(1,0,d22)+merge(1,0,d81)
write(19,*)merge(1,0,d42)+merge(1,0,d81)
write(19,*)merge(1,0,d82)+merge(1,0,d81)
call chk
end
call s1
call s2
call s3
print *,'pass'
end
subroutine chk
complex c
rewind 19
read(19,*) k;if (k/=2) print *,101
read(19,*) k;if (k/=2) print *,102
read(19,*) k;if (k/=2) print *,103
read(19,*) k;if (k/=2) print *,104
read(19,*) a;if (a/=2) print *,105
read(19,*) a;if (a/=2) print *,106
read(19,*) a;if (a/=2) print *,107
read(19,*) c;if (c/=(2,1)) print *,108
read(19,*) c;if (c/=(2,1)) print *,109
read(19,*) c;if (c/=(2,1)) print *,110
read(19,*) k;if (k/=2) print *,111
read(19,*) k;if (k/=2) print *,112
read(19,*) k;if (k/=2) print *,113
read(19,*) k;if (k/=2) print *,114
end

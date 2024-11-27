subroutine sub
common i11,i12,i21,i22,i31,i32,i41,i42,i51,i52,i61,i62,i71,i72
integer z(i11:i12,i21:i22,i31:i32,i41:i42,i51:i52,i61:i62,i71:i72)
z=1
write(2,*)z
write(2,*)999
end
common i11,i12,i21,i22,i31,i32,i41,i42,i51,i52,i61,i62,i71,i72
write(1,*) 2,3,  1,4,  0,1,  -1,-1,  -2,-2,  -3,-3,  -4,-4
rewind 1
read(1,*)i11,i12,i21,i22,i31,i32,i41,i42,i51,i52,i61,i62,i71,i72
do i11=4,7
call sub
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i11=2
do i21=5,8
call sub
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i21=1
do i31=6,10
call sub
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i31=0
do i41=7,11
call sub
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i41=-1
do i51=7,11
call sub
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i51=-2
do i61=9,11
call sub
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i61=-3
do i71=10,15
call sub
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i71=-4
do i11=4,7
do i21=5,8
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i11=2
i21=1
do i11=4,7
do i31=6,10
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i11=2
i31=0
do i11=4,7
do i41=7,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i41=-1
i11=2
do i11=4,7
do i51=7,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i51=-2
i11=2
do i11=4,7
do i61=9,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i61=-3
i11=2
do i11=4,7
do i71=10,15
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i71=-4
i11=2
do i21=5,8
do i31=6,10
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i31=0
i21=1
do i21=5,8
do i41=7,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i41=-1
i21=1
do i21=5,8
do i51=7,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i51=-2
i21=1
do i21=5,8
do i61=9,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i61=-3
i21=1
do i21=5,8
do i71=10,15
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i71=-4
i21=1
do i31=6,10
do i41=7,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i41=-1
i31=0
do i31=6,10
do i51=7,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i51=-2
i31=0
do i31=6,10
do i61=9,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i61=-3
i31=0
do i31=6,10
do i71=10,15
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i71=-4
i31=0
do i41=7,11
do i51=7,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i51=-2
do i41=7,11
do i61=9,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i61=-3
do i41=7,11
do i71=10,15
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i71=-4
i41=-1
do i51=7,11
do i61=9,11
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i61=-3
do i51=7,11
do i71=10,15
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i71=-4
i51=-2
do i61=9,11
do i71=10,15
call sub
end do
end do
rewind 2; read(2,*) iii; if (iii/=999)print *,'error-1';rewind 2
i71=-4
i51=-2
i61=-3
print *,'pass'
end

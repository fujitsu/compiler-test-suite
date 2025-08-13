subroutine sub
common i11,i12,i21,i22,i31,i32,i41,i42,i51,i52,i61,i62,i71,i72
integer z(i11:i12,i21:i22,i31:i32,i41:i42,i51:i52,i61:i62,i71:i72)
z=1
write(40,*)z
write(40,*)999
end
common i11,i12,i21,i22,i31,i32,i41,i42,i51,i52,i61,i62,i71,i72
write(39,*) 2,3,  1,4,  0,5,  -1,6,  -2,6,  -3,8,  -4,9
rewind 39
read(39,*)i11,i12,i21,i22,i31,i32,i41,i42,i51,i52,i61,i62,i71,i72
do i11=4,7
do i21=5,8
do i31=6,10
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i11=2
i21=1
i31=0
do i11=4,7
do i31=6,10
do i41=7,11
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i11=2
i31=0
i41=-1
do i11=4,7
do i41=7,11
do i51=7,11
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i41=-1
i11=2
i51=-2
do i11=4,7
do i51=7,11
do i61=9,11
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i51=-2
i11=2
i61=-3
do i71=10,15
do i11=4,7
do i61=9,11
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i61=-3
i11=2
i71=-4
do i11=4,7
do i41=7,11
do i71=10,15
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i71=-4
i11=2
do i21=5,8
do i31=6,10
do i71=10,15
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i31=0
i21=1
i71=-4
do i21=5,8
do i41=7,11
do i71=10,15
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i41=-1
i71=-4
i21=1
do i21=5,8
do i51=7,11
do i71=10,15
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i51=-2
i21=1
i71=-4
do i21=5,8
do i61=9,11
do i71=10,15
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i61=-3
i21=1
i71=-4
do i21=5,8
do i61=9,11
do i71=10,15
call sub
end do
end do
end do
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
i71=-4
i61=-3
i21=1
do i31=6,10
do i41=7,11
do i51=7,11
do i61=9,11
do i71=10,15
call sub
end do
end do
end do
end do
end do
i71=-4; i61=-3; i51=-2; i21=1; i31=0; i41=-1
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
do i11=4,7
do i21=5,8
do i31=6,10
do i41=7,11
do i51=7,11
do i61=9,11
do i71=10,15
call sub
end do
end do
end do
end do
end do
end do
end do
i71=-4; i61=-3; i51=-2; i21=1; i31=0; i41=-1
rewind 40; read(40,*) iii; if (iii/=999)print *,'error-1';rewind 40
print *,'pass'
end

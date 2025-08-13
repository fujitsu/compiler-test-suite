subroutine s1
write(3,*)bessel_j0(  1.0 )
write(3,*)bessel_j1(  1.0 )
write(3,*)bessel_jn( 0, 1.0 )
write(3,*)bessel_jn( 1, 1.0 )
write(3,*)bessel_jn( 0,0,1.0 )
write(3,*)bessel_jn( 1,0,1.0 )
write(3,*)bessel_jn( 1,1,1.0 )
end

subroutine s2
real,parameter::a1=bessel_j0(  1.0 )
real,parameter::a2=bessel_j1(  1.0 )
real,parameter::a3=bessel_jn( 0, 1.0 )
real,parameter::a4=bessel_jn( 1, 1.0 )
real,parameter::a5(*)=bessel_jn( 0,0,1.0 )
real,parameter::a6(*)=bessel_jn( 1,0,1.0 )
real,parameter::a7(*)=bessel_jn( 1,1,1.0 )
write(4,*) a1
write(4,*) a2
write(4,*) a3
write(4,*) a4
write(4,*) a5
write(4,*) a6
write(4,*) a7
end
call s1
call s2
rewind 3
read(3,*) a
if (abs(a-0.765)>0.001) print *,101
read (3,*) b
if (abs(b-0.440)>0.001) print *,121
read(3,*) a
if (abs(a-0.765)>0.001) print *,131
read (3,*) b
if (abs(b-0.440)>0.001) print *,141
read(3,*) a
if (abs(a-0.765)>0.001) print *,151
read (3,*) b
if (abs(b-0.440)>0.001) print *,161
rewind 4
read(4,*) a
if (abs(a-0.765)>0.001) print *,101
read (4,*) b
if (abs(b-0.440)>0.001) print *,121
read(4,*) a
if (abs(a-0.765)>0.001) print *,131
read (4,*) b
if (abs(b-0.440)>0.001) print *,141
read(4,*) a
if (abs(a-0.765)>0.001) print *,151
read (4,*) b
if (abs(b-0.440)>0.001) print *,161

print *,'pass'
end

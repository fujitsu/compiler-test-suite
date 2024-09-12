subroutine s1
write(1,*)bessel_y0(  1.0 )
write(1,*)bessel_y1(  1.0 )
write(1,*)bessel_yn( 0, 1.0 )
write(1,*)bessel_yn( 1, 1.0 )
write(1,*)bessel_yn( 0,0,1.0 )
write(1,*)bessel_yn( 1,0,1.0 )
write(1,*)bessel_yn( 1,1,1.0 )
end

subroutine s2
real,parameter::a1=bessel_y0(  1.0 )
real,parameter::a2=bessel_y1(  1.0 )
real,parameter::a3=bessel_yn( 0, 1.0 )
real,parameter::a4=bessel_yn( 1, 1.0 )
real,parameter::a5(*)=bessel_yn( 0,0,1.0 )
real,parameter::a6(*)=bessel_yn( 1,0,1.0 )
real,parameter::a7(*)=bessel_yn( 1,1,1.0 )
write(2,*) a1
write(2,*) a2
write(2,*) a3
write(2,*) a4
write(2,*) a5
write(2,*) a6
write(2,*) a7
end
call s1
call s2
rewind 1
read(1,*) a
if (abs(a-0.0882)>0.001) print *,101
read (1,*) b
if (abs(b-(-0.781))>0.001) print *,121
read(1,*) a
if (abs(a-0.0882)>0.001) print *,131
read (1,*) b
if (abs(b-(-0.781))>0.001) print *,141
read(1,*) a
if (abs(a-0.0882)>0.001) print *,151
read (1,*) b
if (abs(b-(-0.781))>0.001) print *,161
rewind 2
read(2,*) a
if (abs(a-0.0882)>0.001) print *,101
read (2,*) b
if (abs(b-(-0.781))>0.001) print *,121
read(2,*) a
if (abs(a-0.0882)>0.001) print *,131
read (2,*) b
if (abs(b-(-0.781))>0.001) print *,141
read(2,*) a
if (abs(a-0.0882)>0.001) print *,151
read (2,*) b
if (abs(b-(-0.781))>0.001) print *,161

print *,'pass'
end

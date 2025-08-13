subroutine s1
write(16,*)bessel_y0(  1.0 )
write(16,*)bessel_y1(  1.0 )
write(16,*)bessel_yn( 0, 1.0 )
write(16,*)bessel_yn( 1, 1.0 )
write(16,*)bessel_yn( 0,0,1.0 )
write(16,*)bessel_yn( 1,0,1.0 )
write(16,*)bessel_yn( 1,1,1.0 )
end

subroutine s2
real,parameter::a1=bessel_y0(  1.0 )
real,parameter::a2=bessel_y1(  1.0 )
real,parameter::a3=bessel_yn( 0, 1.0 )
real,parameter::a4=bessel_yn( 1, 1.0 )
real,parameter::a5(*)=bessel_yn( 0,0,1.0 )
real,parameter::a6(*)=bessel_yn( 1,0,1.0 )
real,parameter::a7(*)=bessel_yn( 1,1,1.0 )
write(17,*) a1
write(17,*) a2
write(17,*) a3
write(17,*) a4
write(17,*) a5
write(17,*) a6
write(17,*) a7
end
call s1
call s2
rewind 16
read(16,*) a
if (abs(a-0.0882)>0.001) print *,101
read (16,*) b
if (abs(b-(-0.781))>0.001) print *,121
read(16,*) a
if (abs(a-0.0882)>0.001) print *,131
read (16,*) b
if (abs(b-(-0.781))>0.001) print *,141
read(16,*) a
if (abs(a-0.0882)>0.001) print *,151
read (16,*) b
if (abs(b-(-0.781))>0.001) print *,161
rewind 17
read(17,*) a
if (abs(a-0.0882)>0.001) print *,101
read (17,*) b
if (abs(b-(-0.781))>0.001) print *,121
read(17,*) a
if (abs(a-0.0882)>0.001) print *,131
read (17,*) b
if (abs(b-(-0.781))>0.001) print *,141
read(17,*) a
if (abs(a-0.0882)>0.001) print *,151
read (17,*) b
if (abs(b-(-0.781))>0.001) print *,161

print *,'pass'
end

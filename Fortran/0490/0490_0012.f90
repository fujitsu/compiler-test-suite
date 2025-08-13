subroutine s1
write(8,*)bessel_j0(  1.0 )
write(8,*)bessel_j1(  1.0 )
write(8,*)bessel_jn( 0, 1.0 )
write(8,*)bessel_jn( 1, 1.0 )
write(8,*)bessel_jn( 0,1,1.0 )
rewind 8
read (8,*) a
if (abs(a-0.765)>0.001) print *,101
read (8,*) a
if (abs(a-0.440)>0.001) print *,121
read (8,*) a
if (abs(a-0.765)>0.001) print *,111
read (8,*) a
if (abs(a-0.440)>0.001) print *,131
read (8,*) a,b
if (abs(a-0.765)>0.001) print *,111
if (abs(b-0.440)>0.001) print *,131
end
call s1
print *,'pass'
end

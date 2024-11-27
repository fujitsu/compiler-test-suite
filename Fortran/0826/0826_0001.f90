subroutine s1
real,parameter::a15(*)=bessel_yn( 0 ,1 ,1.0 )
real,parameter::a16(*)=bessel_yn( -1,1 ,1.0 )
real,parameter::a17(*)=bessel_yn( 3 ,2 ,1.0 )
end
call s1
print *,'pass'
end

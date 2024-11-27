subroutine s1
real,parameter::a15(*)=bessel_yn( -2 ,-1 ,1.0 )
real,parameter::a16(*)=bessel_yn( -2_8 ,-1_8 ,1.0 )
real,parameter::a17(*)=bessel_yn( -2 ,-1_8 ,1.0 )
real,parameter::a18(*)=bessel_yn( -2 ,-1 ,1.0_8 )
real,parameter::a19(*)=bessel_yn( -2_8 ,-1_8 ,1.0_8 )
real,parameter::a14(*)=bessel_yn( -2 ,-1_8 ,1.0_8 )
end
call s1
print *,'pass'
end

subroutine s1
real,parameter::a04(*)=bessel_jn( 1_8 ,0_8 ,1.0 )

write(1,*) a04
end
call s1
print *,'pass'
end

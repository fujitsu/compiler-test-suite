subroutine mod_i2(a)
integer(kind=2) a

print *,mod(a,1_2)
print *,mod(a,2_2)
print *,mod(a,3_2)
print *,mod(a,4_2)
print *,mod(a,5_2)
print *,mod(a,6_2)
print *,mod(a,7_2)
print *,mod(a,8_2)
print *,mod(a,9_2)
print *,mod(a,10_2)
print *,mod(a,11_2)
print *,mod(a,100_2)
print *,mod(a,1234_2)
print *,mod(a,16382_2)
print *,mod(a,16383_2)
print *,mod(a,16384_2)
print *,mod(a,32766_2)
print *,mod(a,32767_2)

print *,mod(a,(-1_2))
print *,mod(a,(-2_2))
print *,mod(a,(-3_2))
print *,mod(a,(-4_2))
print *,mod(a,(-5_2))
print *,mod(a,(-6_2))
print *,mod(a,(-7_2))
print *,mod(a,(-8_2))
print *,mod(a,(-9_2))
print *,mod(a,(-10_2))
print *,mod(a,(-11_2))
print *,mod(a,(-100_2))
print *,mod(a,(-1234_2))
print *,mod(a,(-16382_2))
print *,mod(a,(-16383_2))
print *,mod(a,(-16384_2))
print *,mod(a,(-32766_2))
print *,mod(a,(-32767_2))
print *,mod(a,(-32768_2))

end subroutine

program main
integer(kind=2) i
do i=1,50
  call mod_i2(i)  
enddo
call mod_i2(100_2)  
call mod_i2(1234_2)  
call mod_i2(16382_2)  
call mod_i2(16383_2)  
call mod_i2(16384_2)  
call mod_i2(32766_2)  
call mod_i2(32767_2)  
do i=1,50
  call mod_i2(-i)  
enddo
call mod_i2(-100_2)
call mod_i2(-1234_2)
call mod_i2(-16382_2)
call mod_i2(-16383_2)
call mod_i2(-16384_2)
call mod_i2(-32766_2)
call mod_i2(-32767_2)
call mod_i2(-32768_2)
end program



subroutine div_i2(a)
integer(kind=2) a

print *,a/1_2
print *,a/2_2
print *,a/3_2
print *,a/4_2
print *,a/5_2
print *,a/6_2
print *,a/7_2
print *,a/8_2
print *,a/9_2
print *,a/10_2
print *,a/11_2
print *,a/100_2
print *,a/1234_2
print *,a/16382_2
print *,a/16383_2
print *,a/16384_2
print *,a/32766_2
print *,a/32767_2

print *,a/(-1_2)
print *,a/(-2_2)
print *,a/(-3_2)
print *,a/(-4_2)
print *,a/(-5_2)
print *,a/(-6_2)
print *,a/(-7_2)
print *,a/(-8_2)
print *,a/(-9_2)
print *,a/(-10_2)
print *,a/(-11_2)
print *,a/(-100_2)
print *,a/(-1234_2)
print *,a/(-16382_2)
print *,a/(-16383_2)
print *,a/(-16384_2)
print *,a/(-32766_2)
print *,a/(-32767_2)
print *,a/(-32768_2)

end subroutine

program main
integer(kind=2) i
do i=1,50
  call div_i2(i)  
enddo
call div_i2(100_2)  
call div_i2(1234_2)  
call div_i2(16382_2)  
call div_i2(16383_2)  
call div_i2(16384_2)  
call div_i2(32766_2)  
call div_i2(32767_2)  
do i=1,50
  call div_i2(-i)  
enddo
call div_i2(-100_2)
call div_i2(-1234_2)
call div_i2(-16382_2)
call div_i2(-16383_2)
call div_i2(-16384_2)
call div_i2(-32766_2)
call div_i2(-32767_2)
call div_i2(-32768_2)
end program



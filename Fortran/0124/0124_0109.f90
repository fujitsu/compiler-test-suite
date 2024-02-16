subroutine div_i4(a)
integer(kind=4) a

print *,a/1_4
print *,a/2_4
print *,a/3_4
print *,a/4_4
print *,a/5_4
print *,a/6_4
print *,a/7_4
print *,a/8_4
print *,a/9_4
print *,a/10_4
print *,a/11_4
print *,a/1000_4
print *,a/100000_4
print *,a/123456789_4
print *,a/1073741822_4
print *,a/1073741823_4
print *,a/1073741824_4
print *,a/2147483646_4
print *,a/2147483647_4

print *,a/(-1_4)
print *,a/(-2_4)
print *,a/(-3_4)
print *,a/(-4_4)
print *,a/(-5_4)
print *,a/(-6_4)
print *,a/(-7_4)
print *,a/(-8_4)
print *,a/(-9_4)
print *,a/(-10_4)
print *,a/(-11_4)
print *,a/(-1000_4)
print *,a/(-100000_4)
print *,a/(-123456789_4)
print *,a/(-1073741822_4)
print *,a/(-1073741823_4)
print *,a/(-1073741824_4)
print *,a/(-2147483646_4)
print *,a/(-2147483647_4)
print *,a/(-2147483648_4)

end subroutine

program main
integer(kind=4) i
do i=1,50
  call div_i4(i)  
enddo
call div_i4(1000_4)
call div_i4(100000_4)
call div_i4(123456789_4)
call div_i4(1073741822_4)
call div_i4(1073741823_4)
call div_i4(1073741824_4)
call div_i4(2147483646_4)  
call div_i4(2147483647_4)  
do i=1,50
  call div_i4(-i)  
enddo
call div_i4(-1000_4)
call div_i4(-100000_4)
call div_i4(-123456789_4)
call div_i4(-1073741822_4)
call div_i4(-1073741823_4)
call div_i4(-1073741824_4)
call div_i4(-2147483646_4)  
call div_i4(-2147483647_4)  
call div_i4(-2147483648_4)  
end program



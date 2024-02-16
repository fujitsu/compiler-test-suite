subroutine div_i1(a)
integer(kind=1) a

print *,a/1_1
print *,a/2_1
print *,a/3_1
print *,a/4_1
print *,a/5_1
print *,a/6_1
print *,a/7_1
print *,a/8_1
print *,a/9_1
print *,a/10_1
print *,a/11_1
print *,a/30_1
print *,a/62_1
print *,a/63_1
print *,a/64_1
print *,a/126_1
print *,a/127_1

print *,a/(-1_1)
print *,a/(-2_1)
print *,a/(-3_1)
print *,a/(-4_1)
print *,a/(-5_1)
print *,a/(-6_1)
print *,a/(-7_1)
print *,a/(-8_1)
print *,a/(-9_1)
print *,a/(-10_1)
print *,a/(-11_1)
print *,a/(-30_1)
print *,a/(-62_1)
print *,a/(-63_1)
print *,a/(-64_1)
print *,a/(-126_1)
print *,a/(-127_1)
print *,a/(-128_1)

end subroutine

program main
integer(kind=1) i
do i=1,50
  call div_i1(i)  
enddo
call div_i1(62_1)  
call div_i1(63_1)  
call div_i1(64_1)  
call div_i1(126_1)  
call div_i1(127_1)  
do i=1,50
  call div_i1(-i)  
enddo
call div_i1(-62_1)  
call div_i1(-63_1)  
call div_i1(-64_1)  
call div_i1(-126_1)  
call div_i1(-127_1)  
call div_i1(-128_1)  
end program



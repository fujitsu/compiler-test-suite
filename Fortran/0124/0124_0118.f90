subroutine mod_i1(a)
integer(kind=1) a

print *,mod(a,1_1)
print *,mod(a,2_1)
print *,mod(a,3_1)
print *,mod(a,4_1)
print *,mod(a,5_1)
print *,mod(a,6_1)
print *,mod(a,7_1)
print *,mod(a,8_1)
print *,mod(a,9_1)
print *,mod(a,10_1)
print *,mod(a,11_1)
print *,mod(a,30_1)
print *,mod(a,62_1)
print *,mod(a,63_1)
print *,mod(a,64_1)
print *,mod(a,126_1)
print *,mod(a,127_1)

print *,mod(a,(-1_1))
print *,mod(a,(-2_1))
print *,mod(a,(-3_1))
print *,mod(a,(-4_1))
print *,mod(a,(-5_1))
print *,mod(a,(-6_1))
print *,mod(a,(-7_1))
print *,mod(a,(-8_1))
print *,mod(a,(-9_1))
print *,mod(a,(-10_1))
print *,mod(a,(-11_1))
print *,mod(a,(-30_1))
print *,mod(a,(-62_1))
print *,mod(a,(-63_1))
print *,mod(a,(-64_1))
print *,mod(a,(-126_1))
print *,mod(a,(-127_1))
print *,mod(a,(-128_1))

end subroutine

program main
integer(kind=1) i
do i=1,50
  call mod_i1(i)  
enddo
call mod_i1(62_1)
call mod_i1(63_1)
call mod_i1(64_1)
call mod_i1(126_1)
call mod_i1(127_1)
do i=1,50
  call mod_i1(-i)  
enddo
call mod_i1(-62_1)
call mod_i1(-63_1)
call mod_i1(-64_1)
call mod_i1(-126_1)
call mod_i1(-127_1)
call mod_i1(-128_1)
end program



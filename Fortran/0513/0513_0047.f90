write(1,*)acosh(1.0)
write(1,*)asinh(1.0)
write(1,*)atanh(0.0)
write(1,*)  hypot(3.0,4.0)
write(1,*)dshiftl(1, 2**30, 2)
write(1,*)dshiftr(1,1,1)
write(1,*)leadz(1)
write(1,*)popcnt(1)
write(1,*)poppar(1)
write(1,*)trailz(1)
write(1,*)shifta(1,1)
write(1,*)shiftl(1,1)
write(1,*)shiftr(1,1)
write(1,*)merge_bits(1,1,1)
write(1,*)maskl(1)
write(1,*)maskr(1)
write(1,*)bge(1,1)
write(1,*)bgt(1,1)
write(1,*)ble(1,1)
write(1,*)blt(1,1)
write(1,*)storage_size(1)

write(1,*)bessel_j0(1.0)
write(1,*)bessel_j1(1.0)
write(1,*)bessel_jn(1,1.0)
write(1,*)bessel_jn(1,1,1.0)
write(1,*)bessel_y0(1.0)
write(1,*)bessel_y1(1.0)
write(1,*)bessel_yn(1,1.0)
write(1,*)bessel_yn(1,1,1.0)
write(1,*)findloc([1],1)
write(1,*)iall([1])
write(1,*)iany([1])
write(1,*)iparity([1])
write(1,*)parity([.false.])
write(1,*)norm2([1.0])

print *,'pass'
end program

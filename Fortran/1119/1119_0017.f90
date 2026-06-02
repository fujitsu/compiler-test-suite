real::r(4)
integer::i1,i2
r=1
i1=4
i2=1
call sub(r,i1,i2)
print *,'pass'
contains
subroutine sub(z, y, x)
integer,value:: y, x
real    z(:)
!$omp do simd firstprivate(x,y,z) 
do i=x, y
  z(i) = z(i) + z(i)
enddo
end subroutine sub
end


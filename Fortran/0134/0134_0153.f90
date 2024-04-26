subroutine s
integer a,z(10),y
a=1
z=1
j=1
y=1
write(1, '(a,z16.16)')'a=',loc(a)
write(1, '(a,z16.16)')'z=',loc(z)
write(1, '(a,z16.16)')'y=',loc(y)
!$omp parallel default(none) private(a) shared(z,y) private(j)
write(1, '(a,z16.16)')'a1=',loc(a)
write(1, '(a,z16.16)')'z1=',loc(z)
!$omp parallel default(none) shared(y) 
  y=1
write(1, '(a,z16.16)')'y2=',loc(y)
!$omp end parallel
!$omp end parallel
end
call s
print *,'pass'
end



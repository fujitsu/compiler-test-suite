subroutine s
integer a,z(10),y
a=1
z=1
j=1
y=1
write(64, '(a,z16.16)')'a=',loc(a)
write(64, '(a,z16.16)')'z=',loc(z)
write(64, '(a,z16.16)')'y=',loc(y)
!$omp parallel default(none) private(a) shared(z,y) private(j)
write(64, '(a,z16.16)')'a1=',loc(a)
write(64, '(a,z16.16)')'z1=',loc(z)
!$omp do firstprivate(y)
do i=1,2
  z(i)=y
write(64, '(a,z16.16)')'y2=',loc(y)
end do
!$omp end parallel
end
call s
print *,'pass'
end

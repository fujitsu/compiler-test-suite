!
!
!

integer, pointer, dimension(:,:) :: c
integer, target, dimension(2,4) :: d
d = 100
c => d
c(2,2) = 10
!$omp task
if ( c(2,2) /= 10 ) then
   print *,"NG1 c=",c
end if
c(1,1) = 20
!$omp end task
!$omp taskwait
if ( d(1,1) /= 20 .or. c(2,2) /= 10 ) then
   print *,"NG2 d=",d
end if
print *,"pass"
end

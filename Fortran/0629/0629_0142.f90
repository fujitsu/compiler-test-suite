 module m
 integer i,j
 end module
 use m
!$omp parallel do lastprivate(i,j)
      do i=1,10
        do j=1,10
          continue
        enddo
      enddo

if (i.ne.11) print *,'ng'
if (j.ne.11) print *,'ng'
print *,'pass'
end

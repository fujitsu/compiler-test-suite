integer::a(2),j
j=0
!$omp do
do k=1,2
!$omp  task depend(out:a(k+j))
!$omp  end task
enddo
!$omp end do
print *,'ok'
end

character(2)::i(2)
i="12"
associate(p1=>i(2:2))
!$omp task depend(out:p1)
 i(2:2) = 'AB'
 if(i(1) /= "12") print*, 101
 if(i(2) /= "AB") print*, 102
!$omp end  task
 if(i(1) /= "12") print*, 201
 if(i(2) /= "12") print*, 202
endassociate
print *,'PASS'
end program

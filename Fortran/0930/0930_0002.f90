character(len=:),allocatable::i(:)
integer(kind=2),allocatable::n(:)

allocate(character(len=5)::i(3))
allocate(n(4))
i = "AAAAA"
n = 10

associate(p1=>i(2:3), p2=>n(1:4:2))
 if(i(2) /= "AAAAA") print*, "1101"
!$omp task depend(in:p1)
 if(i(2) /= "AAAAA") print*, "1102"
 if(i(3) /= "AAAAA") print*, "1103"
 i(2:3) = "11111"
 if(i(1) /= "AAAAA") print*, "101"
 if(i(2) /= "11111") print*, "102"
 if(i(3) /= "11111") print*, "103"
!$omp end task

!$omp task depend(out:p2)
 n(1:4:2) = 11
 if(n(1) /= 11) print*, "104"
 if(n(2) /= 10) print*, "105"
 if(n(3) /= 11) print*, "106"
 if(n(4) /= 10) print*, "107"
!$omp end task
 if(i(1) /= "AAAAA") print*, "201"
 if(i(2) /= "AAAAA") print*, "202"
 if(i(3) /= "AAAAA") print*, "203"
 if(n(1) /= 10) print*, "204"
 if(n(2) /= 10) print*, "205"
 if(n(3) /= 10) print*, "206"
 if(n(4) /= 10) print*, "207"
endassociate
print *,'PASS'
end program

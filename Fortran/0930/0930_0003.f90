type ty
character(len=5)::i(3)
integer(kind=2),allocatable::n(:)
end type

type(ty)::obj

allocate(obj%n(4))
obj%i = "AAAAA"
obj%n = 10

associate(p1=>obj%i(2:3), p2=>obj%n(1:4:2))
 if(obj%i(2) /= "AAAAA") print*, "1101"
!$omp task depend(inout:p1)
 if(obj%i(2) /= "AAAAA") print*, "1102"
 if(obj%i(3) /= "AAAAA") print*, "1103"
 obj%i(2:3) = "11111"
 if(obj%i(1) /= "AAAAA") print*, "101"
 if(obj%i(2) /= "11111") print*, "102"
 if(obj%i(3) /= "11111") print*, "103"
!$omp end task

!$omp task depend(in:p2)
 if(obj%n(1) /= 10) print*, "1104"
 if(obj%n(3) /= 10) print*, "1106"
 obj%n(1:4:2) = 11
 if(obj%n(1) /= 11) print*, "104"
 if(obj%n(2) /= 10) print*, "105"
 if(obj%n(3) /= 11) print*, "106"
 if(obj%n(4) /= 10) print*, "107"
!$omp end task

 if(obj%i(1) /= "AAAAA") print*, "201"
 if(obj%i(2) /= "AAAAA") print*, "202",obj%i(2)
 if(obj%i(3) /= "AAAAA") print*, "203",obj%i(3)

 if(obj%n(1) /= 10) print*, "204",obj%n(1)
 if(obj%n(2) /= 10) print*, "205",obj%n(2)
 if(obj%n(3) /= 10) print*, "206",obj%n(3)
 if(obj%n(4) /= 10) print*, "207",obj%n(4)
endassociate
print *,'PASS'
end program

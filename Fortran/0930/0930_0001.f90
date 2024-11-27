type ty
character(len=5)::i
integer(kind=2),allocatable::n
end type

type(ty)::obj

allocate(obj%n)
obj%i = "AAAAA"
obj%n = 10

associate(p1=>obj%i, p2=>obj%n)
 if(obj%i /= "AAAAA") print*, "1101"
 if(obj%n /= 10) print*, "1102"
!$omp task depend(out:p1)
 if(obj%i /= "AAAAA") print*, "1103"

 obj%i = "11111"

 if(obj%i /= "11111") print*, "1104"
!$omp end task
 
if(obj%i /= "AAAAA") print*, "1105"

obj%i = "BBBBB"
obj%n = 20

!$omp task depend(out:p2) depend(in:p1)
 if(obj%i /= "BBBBB") print*, "201"
 if(obj%n /= 20) print*, "202"

 obj%i = "CCCCC"
 obj%n = 11

 if(obj%n /= 11) print*, "203"
 if(obj%i /= "CCCCC") print*, "204"
!$omp end task

if(obj%i /= "BBBBB") print*, "205"
if(obj%n /= 20) print*, "206",obj%n
endassociate
print *,'PASS'
end program

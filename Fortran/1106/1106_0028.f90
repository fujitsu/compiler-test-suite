type ty
character(len=5)::i(3)
end type

type,extends(ty)::tt
integer(kind=2),allocatable::n(:)
end type

class(ty),allocatable::obj

allocate(tt::obj)
obj%i = "AAAAA"

select type (obj)
type is (tt)
allocate(obj%n(4))
!print '("1:",z16.16)',loc(obj%n)
obj%n = 10
associate(p2=>obj%n(1:4:2))
!$omp task depend(in:p2)
 if(obj%n(1) /= 10) print*, "1104"
 if(obj%n(3) /= 10) print*, "1106"
 obj%n(1:4:2) = 11
!print '("2:",z16.16)',loc(obj%n)
 if(obj%n(1) /= 11) print*, "104"
 if(obj%n(2) /= 10) print*, "105"
 if(obj%n(3) /= 11) print*, "106"
 if(obj%n(4) /= 10) print*, "107"
!$omp end task

!print '("3:",z16.16)',loc(obj%n)
 if(obj%n(2) /= 10) print*, "205"
 if(obj%n(4) /= 10) print*, "207"
print *,'sngg362t : pass'
endassociate

 class default
  print*,"912"
 end select
end program

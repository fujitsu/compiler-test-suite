subroutine s1
type y
  integer::v
end type
class(y),allocatable::a

!$ call omp_set_num_threads(1)

allocate(a)
a%v=1

!$omp parallel  private(a)

select type( x=> a )
class is (y)
 x%v=2
 if (a%v/= 2) print *,101
 if (x%v/= 2) print *,103
end select
!$omp end parallel


if (a%v/= 1) print *,102

end

call s1
print *,'pass'
end

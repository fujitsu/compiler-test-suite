type x
   integer:: x1=1
end type
type,extends(x):: xx
   integer:: x2=2
end type

type y
  integer::y1=3
  class(x),allocatable::y2
end type
  class(x),allocatable::v1
  type (y)::v2

!$omp threadprivate ( v2 )

!$omp parallel private(k)

k=0
allocate( xx:: v2%y2 )
select type (a=> v2%y2 )
 type is(xx)
   k=1
   if (a%x2/=2) print *,101
end select

!$omp end parallel 

!$omp parallel private(k)

k=0
select type (a=> v2%y2 )
 type is(xx)
   k=1
   if (a%x2/=2) print *,101
end select

!$omp end parallel 

print *,'pass'
end

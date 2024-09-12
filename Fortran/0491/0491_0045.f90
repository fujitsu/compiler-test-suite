type x
   integer:: x1=1
end type
type,extends(x):: xx
   integer:: x2=2
end type

type y
  integer::y1=3
  class(x),pointer::y2
end type
  class(x),pointer::v1
  type (y)::v2

!$omp threadprivate ( v2 )

!$omp parallel private(k) copyin(v2)

k=0
select type (a=> v2%y2 )
 type is(x)
   k=1
end select
if (k/=1) print *,901
allocate( xx:: v2%y2 )

!$omp end parallel 

!$omp parallel private(k)

k=0
select type (a=> v2%y2 )
 type is(xx)
   k=1
   if (a%x1/=1) print *,101
   if (a%x2/=2) print *,121
end select
if (k/=1) print *,902

!$omp end parallel 

print *,'pass'
end

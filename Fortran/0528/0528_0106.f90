  module m1
  type x
     integer:: x1=1
  end type
  type,extends(x):: xx
     integer:: x2=2
     integer:: x3(200)=3
  end type

  type y
    integer::y1=3
    class(x),allocatable::y2
  end type

  contains
  subroutine s1
  type(y),allocatable::v
  allocate(v)
  allocate(v%y2)
  v%y1 = 5
  v%y2%x1 = 6

  !$omp parallel firstprivate(v)
  if(v%y1 /= 5) print*,101
  if(v%y2%x1 /= 6) print*,102

  deallocate(v)
  allocate(v)
  allocate(xx::v%y2)

  v%y1 = 10
  select type(a=>v%y2)
  type is (xx)
   if (a%x1/=1) print *,10001
   if (a%x2/=2) print *,10002
   if (any(a%x3/=3)) print *,10003
   a%x1 = 11
   a%x2 = 12
  class default
   print*,911
  end select
  !$omp end parallel

  if(v%y1 /= 5) print*, 101, v%y1

  select type(b=>v%y2)
  type is (x)
   if(b%x1 /= 6) print*,102,b%x1
  class default
   print*,912
  end select

  end
  end

  use m1
  call s1
  print *,'pass'
  end

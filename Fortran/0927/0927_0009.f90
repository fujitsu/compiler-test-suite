module m1
  type y
     integer::y2
     integer,allocatable::y1(:,:)
     integer::y3
  end type

  type x
     integer::x2
     integer,allocatable::x1(:,:)
     type(y)::obj
  end type
  
  type,extends(x) :: z
     character(len=5)::z1
  end type
end

subroutine s1
use m1
  class(x),allocatable :: v(:)

  allocate(z::v(2))
  allocate(v(1)%x1(3,5))
  allocate(v(2)%x1(2,4))
  allocate(v(1)%obj%y1(2,4))
  allocate(v(2)%obj%y1(3,5))

  v(1)%x1 = 11
  v(2)%x1 = 12
  v(1)%obj%y1 = 13
  v(2)%obj%y1 = 14

  select type(v)
   type is(z)
    v(1)%z1 = "AAAAA"
    v(2)%z1 = "BBBBB" 
   class default
    print*, "911"
  end select

 !$omp single private(v)
  if (any(v(1)%x1/=11)) print *,1201
  if (any(v(2)%x1/=12)) print *,1202
  if (any(v(1)%obj%y1/=13)) print *,1203
  if (any(v(2)%obj%y1/=14)) print *,1204

  select type(v)
   type is(z)
    if (v(1)%z1 /= "AAAAA") print *,1205
    if (v(2)%z1 /= "BBBBB") print *,1206
   class default
    print*, "912"
  end select

  deallocate(v(1)%x1)
  deallocate(v(2)%x1)
  deallocate(v(1)%obj%y1)
  deallocate(v(2)%obj%y1)

  allocate(v(1)%x1(4,6))
  allocate(v(2)%x1(5,7))
  allocate(v(1)%obj%y1(5,7))
  allocate(v(2)%obj%y1(4,6))

  v(1)%x1 = 21
  v(2)%x1 = 22
  v(1)%obj%y1 = 23
  v(2)%obj%y1 = 24
 !$omp end single

  if (any(v(1)%x1 /= 11)) print *,201
  if (any(v(2)%x1 /= 12)) print *,202
  if (any(v(1)%obj%y1 /= 13)) print *,203
  if (any(v(2)%obj%y1 /= 14)) print *,204
  if (size(v(1)%x1) /= 15) print *,205
  if (size(v(2)%x1) /= 8) print *,206
  if (size(v(1)%obj%y1) /= 8) print *,207
  if (size(v(2)%obj%y1) /= 15) print *,208

  select type(v)
   type is(z)
    if (v(1)%z1 /= "AAAAA") print *,209
    if (v(2)%z1 /= "BBBBB") print *,210
   class default
    print*, "913"
  end select
end

call omp_set_num_threads(2)
call s1
print *,'PASS'
end

  

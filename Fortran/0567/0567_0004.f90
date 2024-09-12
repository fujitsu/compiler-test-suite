type x
    integer,allocatable:: x1(:)
end type
type y
type(x),allocatable :: y1(:)    
integer,allocatable:: y2
end type

type tt
  type(y),allocatable:: z1,z2,z3
end type

type(y)::w
type(tt)::obj

allocate(w%y1(2))
allocate(w%y2)
allocate(w%y1(1)%x1(2))
allocate(w%y1(2)%x1(2))
w%y1(1)%x1=1
w%y1(2)%x1=2
w%y2=20
if (any(w%y1(1)%x1/=1)) print *,101
allocate(obj%z1,obj%z2,obj%z3,source=w)
w%y1(1)%x1=5
w%y1(2)%x1=6
w%y2=30
if (any(obj%z1%y1(1)%x1/=1)) print *,102
if (any(obj%z1%y1(2)%x1/=2)) print *,103
if (any(obj%z2%y1(1)%x1/=1)) print *,104
if (any(obj%z2%y1(2)%x1/=2)) print *,105
if (any(obj%z3%y1(1)%x1/=1)) print *,106
if (any(obj%z3%y1(2)%x1/=2)) print *,107
if (obj%z1%y2/=20) print *,202
if (obj%z2%y2/=20) print *,205
if (obj%z3%y2/=20) print *,206
if (any(w%y1(1)%x1/=5)) print *,208
if (any(w%y1(2)%x1/=6)) print *,209
if (w%y2/=30) print *,209
print *,'pass'
end


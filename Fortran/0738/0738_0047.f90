integer(4),parameter::k=3
integer(4),parameter::j=1
type z
  integer(4)            ,dimension(4)::zi
  integer(4)            ,dimension(5)::za
end type
type y
  integer(4)            ,dimension(2)::yi
  type(z)   ,allocatable,dimension(:)::ya
end type
type x
  integer(4)            ,dimension(3)::xi
  type(y)               ,dimension(k)::xa
end type
type w
  integer(4)            ,dimension(4)::wi
  type(x)   ,allocatable,dimension(:)::wa
end type
type v
  integer(4)            ,dimension(5)::vi
  type(w)               ,dimension(k)::va
end type
type u
  integer(4)            ,dimension(6)::ui
  type(v)   ,allocatable,dimension(:)::ua
end type
type t
  integer(4)            ,dimension(7)::ti
  type(u)               ,dimension(k)::ta
end type
type s
  integer(4)            ,dimension(8)::si
  type(t)   ,allocatable,dimension(:)::sa
end type

type(s)     ,allocatable,dimension(:)::a,b

  allocate(a(k))
  allocate(a(k)%sa(k))
  allocate(a(k)%sa(k)%ta(k)%ua(k))
  allocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k))
  allocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(k))
  a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(k)%za = (/1,2,3,4,5/)
  a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(k)%zi = (/6,7,8,9/)
  allocate(b(k))
  a(j) = a(k)
  if (size(a)/=k) write(6,*) "NG"
  if (size(a(j)%sa)/=k) write(6,*) "NG"
  if (size(a(j)%sa(k)%ta)/=k) write(6,*) "NG"
  if (size(a(j)%sa(k)%ta(k)%ua)/=k) write(6,*) "NG"
  if (size(a(j)%sa(k)%ta(k)%ua(k)%va)/=k) write(6,*) "NG"
  if (size(a(j)%sa(k)%ta(k)%ua(k)%va(k)%wa)/=k) write(6,*) "NG"
  if (size(a(j)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa)/=k) write(6,*) "NG"
  if (size(a(j)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya)/=k) write(6,*) "NG"
  if (size(a(j)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(k)%za)/=5) write(6,*) "NG"
  if (size(a(j)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(k)%zi)/=4) write(6,*) "NG"

  if (any(a(j)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(k)%za/=(/1,2,3,4,5/))) &
  write(6,*) "NG"
  if (any(a(j)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(k)%zi/=(/6,7,8,9/))) &
  write(6,*) "NG"

 print *,'pass'
end

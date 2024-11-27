integer(4),parameter::k=1
type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type(z)   ,allocatable,dimension(:)::ya
end type
type x
  type(y)   ,allocatable,dimension(:)::xa
end type
type w
  type(x)   ,allocatable,dimension(:)::wa
end type
type v
  type(w)   ,allocatable,dimension(:)::va
end type
type u
  type(v)   ,allocatable,dimension(:)::ua
end type
type t
  type(u)   ,allocatable,dimension(:)::ta
end type
type s
  type(t)   ,allocatable,dimension(:)::sa
end type

type(s)     ,allocatable,dimension(:)::a,b

  allocate(a(k))
  allocate(b(k))
  allocate(a(k)%sa(k))
  allocate(b(k)%sa(k))
  allocate(a(k)%sa(k)%ta(k))
  allocate(b(k)%sa(k)%ta(k))
  allocate(a(k)%sa(k)%ta(k)%ua(k))
  allocate(b(k)%sa(k)%ta(k)%ua(k))
  allocate(a(k)%sa(k)%ta(k)%ua(k)%va(k))
  allocate(b(k)%sa(k)%ta(k)%ua(k)%va(k))
  allocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k))
  allocate(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k))
  allocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k))
  allocate(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k))
  allocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(4))
  allocate(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(4))
  allocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(1)%za(1))
  allocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(2)%za(2))
  allocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(3)%za(3))
  allocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(4)%za(4))
  allocate(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(1)%za(5))
  allocate(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(2)%za(5))
  allocate(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(3)%za(5))
  allocate(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(4)%za(5))

  a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(1)%za = (/1/)
  a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(2)%za = (/2,3/)
  a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(3)%za = (/3,4,5/)
  a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(4)%za = (/4,5,6,7/)

  b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(2:3:1) =           &
                        a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(1:4:3)

  deallocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(1)%za)
  deallocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(2)%za)
  deallocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(3)%za)
  deallocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(4)%za)
  deallocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya)
  deallocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa)
  deallocate(a(k)%sa(k)%ta(k)%ua(k)%va(k)%wa)
  deallocate(a(k)%sa(k)%ta(k)%ua(k)%va)
  deallocate(a(k)%sa(k)%ta(k)%ua)
  deallocate(a(k)%sa(k)%ta)
  deallocate(a(k)%sa)
  deallocate(a)

  if (size(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(1)%za)/=5) write(6,*) "NG"
  if (size(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(2)%za)/=1) write(6,*) "NG"
  if (size(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(3)%za)/=4) write(6,*) "NG"
  if (size(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(4)%za)/=5) write(6,*) "NG"

  if (any(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(2)%za/=(/1/))) &
  write(6,*) "NG"
  if (any(b(k)%sa(k)%ta(k)%ua(k)%va(k)%wa(k)%xa(k)%ya(3)%za/=(/4,5,6,7/))) &
  write(6,*) "NG"

 print *,'pass'
end

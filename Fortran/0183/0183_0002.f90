type x
  integer:: x1=1
end type
type,extends(x):: y
  integer:: y1=2
end type
type(x),target:: a
type(y),target:: b
class(x),allocatable::p,q
allocate(q,source=b)
k=0
allocate(p,source=q)
select type(p)
type is(y)
 k=1
  write(3,*) p
end select
if (k/=1) print *,101
deallocate(p)
rewind 3
read(3,*) k1,k2
if (any([k1,k2]/=[1,2])) print *,101
allocate(p,source=a)
k=0
select type(p)
type is(x)
 k=1
  write(4,*) p
end select
if (k/=1) print *,102
rewind 4
read(4,*) k2
if (        k2/=1) print *,102
print *,'pass'
end


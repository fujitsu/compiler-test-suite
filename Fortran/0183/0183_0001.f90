type x
  integer:: x1=1
end type
type,extends(x):: y
  integer:: y1=2
end type
type(x),target:: a
type(y),target:: b
class(x),pointer::p,q
p=>a
q=>b
k=0
allocate(p,source=q)
select type(p)
type is(y)
 k=1
  write(1,*) p
end select
if (k/=1) print *,101
rewind 1
read(1,*) k1,k2
if (any([k1,k2]/=[1,2])) print *,101
p=>a
k=0
select type(p)
type is(x)
 k=1
  write(2,*) p
end select
if (k/=1) print *,102
rewind 2
read(2,*) k2
if (        k2/=1) print *,102
print *,'pass'
end


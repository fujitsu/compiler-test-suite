subroutine s
type z
  character::w
end type
  class(z),allocatable::r
  r=z('1')
k=0
select type(r)
  type is(z)
    k=1
end select
if (k/=1) print *,1001
if (r%w/='1') print *,1001
end
subroutine t
type b
end type
type,extends(b):: z
  character,allocatable::w
end type
  class(b),allocatable::r
  class(b),allocatable::v
allocate(z::v)
select type(v)
  type is(z)
    allocate(v%w,source='1')
end select
  r=v  
k=0
select type(r)
  type is(z)
    k=1
    r%w='2'
end select
if (k/=1) print *,1001
k=0
select type(v)
  type is(z)
if (v%w/='1') print *,1002
    k=1
end select
if (k/=1) print *,1021
end
call s
call t
print *,'sngg371p : pass'
end

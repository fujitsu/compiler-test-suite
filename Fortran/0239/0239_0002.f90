type base
  integer::x1
end type
type,extends(base)::ext
  integer::x2
end type

type zzz
  integer:: z1
  class(base),pointer:: p
end type
type(zzz)::var
allocate(ext::var%p)

select type(pp=>var%p)
 class is(ext)
    pp%x2=10
end select

k=1
associate (n=> k)
 n=n+1
end associate

if (k/=2) print *,'Error-1'
select type(pp=>var%p)
 class is(ext)
    if (pp%x2/=10) print *,'Error-2'
 class default
    print *,'Error-3'
end select

print *,'pass'
end

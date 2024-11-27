subroutine s1
type x0
  integer::x1
end type
type,extends(x0):: y
  integer::y1
end type
class(x0),allocatable::a(:)

allocate(y:: a(2) )
a(1)%x1=-1
a(2)%x1=-1
print *,a(1)%x1
print *,a(2)%x1
select type (a)
type is(y)
a(1)%y1=-1
a(2)%y1=-1
print *,a(1)%y1
print *,a(2)%y1
end select
 
deallocate(a)
allocate(y::a(2))
print *,a(1)%x1
print *,a(2)%x1
select type (a)
type is(y)
print *,a(1)%y1
print *,a(2)%y1
end select

end
call s1
print *,'err_pass'
end

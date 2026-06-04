subroutine s1
type x
  integer::x1
  class(*),allocatable::c
  class(x),allocatable::d
end type 
class(*),allocatable::a,e,g
class(x),allocatable::b,f,h
allocate(x::a,b)
select type (a)
 type is(x)
   a%x1=1
end select
   b%x1=1
allocate(e,g,source=a)
deallocate(e,g)
allocate(e,f,source=b)
deallocate(e,f)
allocate(e,source=a)
deallocate(e)
allocate(g,source=a)
deallocate(g)
allocate(e,source=b)
deallocate(e)
allocate(f,source=b)
deallocate(f)

end
call s1
print *,'sngg750p : pass'
end

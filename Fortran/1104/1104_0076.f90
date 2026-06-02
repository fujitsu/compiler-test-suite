subroutine s1
type x
  integer::x1
  class(*),allocatable::c
  class(x),allocatable::d
end type 
class(*),allocatable::a,e
class(x),allocatable::b,f
allocate(x::a,b)
select type (a)
 type is(x)
   a%x1=1
end select
   b%x1=1
e=a
deallocate(e)
!f=a
!deallocate(f)
e=b
deallocate(e)
f=b
deallocate(f)

end
call s1
print *,'sngg751p : pass'
end

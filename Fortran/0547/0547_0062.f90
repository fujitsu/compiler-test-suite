subroutine s1
type x
  integer::x1
end type
class(x),allocatable::v(:)

allocate(v(2))
select type(p=>v)
 type is (x)
   associate(pp=> v(1)%x1)
     pp=1
     associate(p2=> v(2)%x1)
     p2=2
     end associate
   end associate
end select
if (v(1)%x1/=1) print *,1
if (v(2)%x1/=2) print *,2
end
call s1
print *,'pass'
end


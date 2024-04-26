module m1
  type xx
     integer:: xx1 
     integer:: xx2 
  end type
  type x0
     integer:: x01 
     class(*),allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type (x0),target,allocatable::v1(:),v2(:)
class(*),pointer    :: p(:)

allocate(v2(2))
v2%x01=1
allocate( v1 ,source=v2) 

end
call s1
print *,'pass'
end

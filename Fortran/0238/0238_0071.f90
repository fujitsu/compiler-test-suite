module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1(:),v2(:)


allocate(v2(1))
allocate(v2(1)%x02(2))
v2(1)%x02(1)=1
v2(1)%x02(2)=2

call ss
allocate( v1 ,source=v2) 

end
call s1
print *,'pass'
end
subroutine ss
end

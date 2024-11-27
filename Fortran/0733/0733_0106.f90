 module m1
interface operator(/=)
module procedure d1
end interface 
type xx
 character*3 x
end type
 type(xx),parameter,dimension(1,2,1)::m=xx('aaa')
  contains
   elemental function aster(a1)
   type(xx) aster
   type(xx),intent(in)::a1
       aster%x=a1%x(1:1)//'ba'
   end function
   elemental function plus(a1)
   type(xx) plus
   type(xx),intent(in)::a1
   plus%x=a1%x(1:2)//'c'
   end function
  elemental function d1(x1,x2)
  logical::d1
  type(xx),intent(in)::x1,x2
   d1=x1%x/=x2%x
  end function
 end
 use m1
 integer,allocatable::v3(:)
 type(xx),dimension(:,:,:),pointer:: zz2
 allocate(zz2(1,2,1));zz2%x='abc'
 allocate(v3(4))
v3=(/4,3,2,1/)
 if (any(zz2/=plus(aster(m))))write(6,*) "NG"
print *,'pass'
 end

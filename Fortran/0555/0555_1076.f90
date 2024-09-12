INTERFACE OPERATOR(+)
       function pls(a,b)
       class(*), allocatable, intent(in) :: a
 
       class(*), allocatable, intent(in) :: b
       class(*),allocatable :: pls
       END function
END INTERFACE operator(+)
 
       class(*), allocatable::pptr
       class(*),pointer::pp
       class(*), allocatable::pptr1
       class(*), allocatable::pptr2
integer :: ii =10

        allocate(pptr,  source =ii)
        allocate(pptr1, source =ii) 
        allocate(integer::pptr2)
 
       allocate(pp,source=( pptr + pptr1))


select type(pp)
 
type is (integer)
 
if(pp==20) print*,'PASS'
 
end select
 
END
 
function pls(a,b)
 class(*), allocatable, intent(in) :: a
 class(*), allocatable, intent(in) :: b
 class(*), allocatable :: pls
 
 integer :: ii
 
select type(a)
type is(integer)
select type (b)
type is (integer)
 
ii = a + b
 
end select
end select
 
allocate(pls, source =ii)
 
END function 

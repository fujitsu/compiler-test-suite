  call test ()
print*,"Pass"
contains
  subroutine test ()
    class(*),allocatable :: obj(:)
    class(*),allocatable :: obj2(:)
    integer, dimension (10) :: f =[1,2,3,4,5,6,7,8,9,10]
    integer :: i=0
    allocate(obj(10),source=f)
    
s1: select type(asc=>obj)
    type is(integer)
     do k=asc(1),asc(5)
      i= i+1    
     end do
      allocate(obj2(10),source=asc)
s2: select type(asc2=>obj2)
    type is(integer)
      if(any(asc.ne.asc2))print*,"101"
s3: select type(asc2=>obj2)
    type is(integer)
      if(any(asc(asc2(1):asc2(5)).ne.asc2(1:5)))print*,"103"
    end select s3
    class default
       print*,"202"
    end select s2
    class default
       print*,"102"
    end select s1
  end subroutine
end program 

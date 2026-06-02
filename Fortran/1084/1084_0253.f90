  call test ()
print*,"Pass"
contains
  subroutine test ()
    class(*),allocatable :: obj
    integer, dimension (10) :: f
    integer :: i
    allocate(integer :: obj)

s1: select type(asc=>obj)
    type is(integer)
    asc=4
    forall (i = asc:asc+4) f(2) = asc * 100
    if(f(2) .ne. 400)print*,"101"
    class default
    print*,"102"
    end select s1

s2: select type(asc=>obj)
    type is(integer)
    asc=4
    forall (i = 1:10) f(asc) = asc * 100
    if(f(asc-2) .ne. 400)print*,"101"
    class default
    print*,"102"
    end select s2

  end subroutine
end program 

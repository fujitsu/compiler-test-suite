module descsub
  character (len=5),target, dimension(4) :: pc
contains
  function foo() result(b)
    character (len=5), dimension(:), pointer :: b
    b => pc(1:3:2)
  end function
end module descsub

program main
  use descsub
  pc(1)= 'one'
  pc(2)= 'two'
  pc(3)= 'three'
  pc(4)= 'four'
  call kk1(foo())
  call kk2(foo())
  call kk3(foo())
print *,'pass'
contains
  subroutine kk1(p)
character (len=*), dimension(:), pointer :: p
 if (any(p/=(/'one  ','three'/)))write(6,*) "NG"
if (len(p)/=5) write(6,*) "NG"
  end subroutine
  subroutine kk2(p)
character (len=*), dimension(:):: p
 if (any(p/=(/'one  ','three'/)))write(6,*) "NG"
if (len(p)/=5) write(6,*) "NG"
  end subroutine
  subroutine kk3(p)
character (len=*), dimension(2):: p
 if (any(p/=(/'one  ','three'/)))write(6,*) "NG"
if (len(p)/=5) write(6,*) "NG"
  end subroutine
end

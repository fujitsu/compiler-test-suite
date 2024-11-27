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
  character*20 c
c(11:)=' '
  pc(1)= 'one'
  pc(2)= 'two'
  pc(3)= 'three'
  pc(4)= 'four'
  read(foo(),'(a,/,a)') c(1:5),c(6:10)
if (index(c,'one')==0)write(6,*) "NG"
if (index(c,'three')==0)write(6,*) "NG"
print *,'pass'
end

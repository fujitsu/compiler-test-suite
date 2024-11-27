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
  write(1,*)foo()
call chk
print *,'pass'
end
subroutine chk
character*20 c
rewind 1
read(1,'(a)') c;if (index(c,'one')==0)write(6,*) "NG"
if (index(c,'three')==0)write(6,*) "NG"
end

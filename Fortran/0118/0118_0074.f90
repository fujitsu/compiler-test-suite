program main
  implicit none
  call test4
end program main

subroutine test4()
  complex(kind=4)::a,b
  complex(kind=8)::e,f
  integer::x,i
  namelist /nam/a,b,e,f

  a=(1,2)
  b=(2,3)
  e=(4,5)
  f=(5,6)
  x = 1
  call sub()
contains 
  recursive subroutine sub()
    do i=1,256
       print *, i
       write(6,nam)
    enddo
  end subroutine sub
end subroutine test4


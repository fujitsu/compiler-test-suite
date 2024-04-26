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
    do j=1,16
       do i=1,16
          print *, i,j
          write(6,nam)
       enddo
    end do
  end subroutine sub
end subroutine test4


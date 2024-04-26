module defstruct
  type struct_1
   integer(kind=4) :: a
   integer(kind=4) :: b
   integer(kind=4) :: c
   integer(kind=4) :: d
   integer(kind=4) :: e
   integer(kind=4) :: f
   integer(kind=4) :: g
  end type struct_1
end module
 

program main
  use defstruct
  integer(kind=4),dimension(64) :: res
  type(struct_1) :: st1(64)

  call init(st1,res,64)
  do i=1,2
     call test(st1)
  enddo
  do i=1,64
     if(st1(i)%a .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(st1,res,n1)
  use defstruct
  integer(kind=4),dimension(n1) :: res
  type(struct_1) :: st1(n1)


  do i=1,n1
     st1(i)%a = 0
     st1(i)%b = 0
     st1(i)%c = 0
     st1(i)%d = 0
     st1(i)%e = 0
     st1(i)%f = 0
     st1(i)%g = 0
     res(i) = 0
  enddo

  do i=1,n1,1
     st1(i)%b = i
     res(i) = i
  enddo
end subroutine init


subroutine test(st1)
  use defstruct
  type(struct_1) :: st1(64)


  do i=1,64,1
     st1(i)%a = st1(i)%b
  enddo
end subroutine test

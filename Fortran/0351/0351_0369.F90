module defstruct
  type struct_1
   integer(kind=4),dimension(64) :: a
  end type struct_1
  type struct_2
   integer(kind=4),dimension(64) :: b
  endtype struct_2
end module
 

program main
  use defstruct
  integer(kind=4),dimension(64) :: res
  type(struct_1) :: st1
  type(struct_2) :: st2

  call init(st1,st2,res,64)
  do i=1,2
     call test(st1,st2)
  enddo
  do i=1,64
     if(st1%a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(st1,st2,res,n1)
  use defstruct
  integer(kind=4),dimension(n1) :: res
  type(struct_1) :: st1
  type(struct_2) :: st2


  do i=1,n1
     st1%a(i) = 0
     st2%b(i) = 0
     res(i) = 0
  enddo

  do i=1,n1,5
     st2%b(i) = i
     res(i) = i
  enddo
end subroutine init


subroutine test(st1,st2)
  use defstruct
  type(struct_1) :: st1
  type(struct_2) :: st2


  do i=1,64,5
     st1%a(i) = st2%b(i)
  enddo
end subroutine test

!
! -Knoswp,nosimd,nounroll -W0,-zmpa=Ailfunc-msg
! see. optmsg or debug-msg
!
module kind_mod
  integer,parameter:: test_kind = 8
  integer,parameter:: n_itr = 1000
  real(test_kind)  input(1000)
  real(test_kind)  result(1000)
  real(test_kind)  input2(100,1000)
  real(test_kind)  result2(1000,1000)
end module kind_mod

subroutine test_loop_without_call(n)
  !ocl noilfunc
  use kind_mod
  integer i,n
  !ocl ilfunc
  do i=1,n
     result(i) = sin(input(i));
  end do
end subroutine test_loop_without_call

subroutine test_loop_with_call(n)
  !ocl noilfunc
  use kind_mod
  integer i,n

  !ocl ilfunc
  do i=1,n
     call foo
     result(i) = cos(input(i));
  end do
end subroutine test_loop_with_call

subroutine test_nest_loop(n)
  use kind_mod
  integer i,j,n
  !ocl noilfunc
  do i=1,n
     result2(i,1) = tan(input2(i,1))
     !ocl ilfunc
     do j=1,n
        result2(i,j) = exp(input2(i,j))
     end do
     !ocl noilfunc
     do j=1,n-1
        result2(i,j+1) = log(input2(i,j))
     end do
  end do
end subroutine test_nest_loop

program main
  use kind_mod
  print *,"PASS"
end

subroutine foo
end subroutine foo

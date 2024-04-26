subroutine sub1(arg1,arg2,i)
  real(kind=8)::arg1(1024)
  real(kind=4)::arg2(1024)
  integer::i
  arg1(i) = arg1(i) + 1
  arg2(i) = arg2(i) + 1
end subroutine sub1
subroutine sub(arg1, arg2)
  real(kind=8)::arg1(1024)
  real(kind=4)::arg2(1024)

  do i=1,1024
     call sub1(arg1,arg2,i)
  end do
end subroutine sub
program main
  print *,"OK"
end program main

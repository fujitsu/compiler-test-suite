subroutine sub1(arg1)
  integer i
  integer,dimension(16,16)::arg1
  do j=1,16
     do i=1,16
        arg1(i,j) = arg1(i,j) + i
     end do
  end do
end subroutine sub1
subroutine sub(ret)
  integer,dimension(16,16)::ret

  ret = 0
  call sub1(ret)

end subroutine sub

program main
  print *,"OK"
end program main

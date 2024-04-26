subroutine sub(a, b)
  integer::i, b
  integer,dimension(2)::a
  
  do i=1,2
     if(a(i)==1) cycle
     b=a(i)-1
  end do
end subroutine sub

program main
  integer :: b
  integer,dimension(2)::a
  do i=1,2
     a(i) = i-1
  end do
  call sub(a,b)
  if (b == -1) then
     write(*,*) "OK"
  else
     write(*,*) "NG"
  end if
end program main

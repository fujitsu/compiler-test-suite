program main
  integer y(100)/100*0/
  call sub1(y)
end program main

subroutine sub1(y)
  integer y(100)
  integer x
  x = y(1)
  do j=1,100
     do k=1,x
        y(k) = 1
     enddo
  enddo

  if (y(1) .ne. 0) then
     print *,"ng", y(1)
  else
     print *,"OK"
  endif


end subroutine sub1

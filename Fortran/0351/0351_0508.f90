subroutine sub(z)
  real*4,dimension(1:10) :: z

  do i = 1, 10
     z(i) = real(ibits(8, 3, 1))
  end do
end subroutine sub

program main
  real*4,dimension(1:10) :: z = 0.0
  
  call sub(z)
  
  do i = 1, 10
     if(z(i) .eq. 1.0_4) then
        write(6, *) 'OK'
     else
        write(6, *) 'NG'
     end if
  end do
end program main

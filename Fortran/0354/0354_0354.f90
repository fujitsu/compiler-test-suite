subroutine test01(a)
  real(8)::a(20)
  do i=1,20
     a(i) = i
  enddo
end subroutine

program main
  real(8)::a(20), b(20)
  Do i=1, 20
     a(i) = i
     b(i) = i
  Enddo
  call test01(a)
  do i=1,20
     if (a(i) .ne. b(i)) then
        write(*,*) 'NG'
     endif
  enddo
  write(*,*) 'OK'
end program

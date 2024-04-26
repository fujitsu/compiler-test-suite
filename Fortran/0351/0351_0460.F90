program main
  complex(kind=4),dimension(512) :: a
  do i=1,2
     call test(a)
  enddo
  do i=1,512
     if(a(i) .ne. cmplx(1.0,1.0,kind=4)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main



subroutine test(a)
  complex(kind=4), dimension(512) :: a


  do i=1,512
     a(i) = cmplx(1.0,1.0,kind=4)
  enddo
end subroutine test

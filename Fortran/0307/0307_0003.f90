subroutine sub_1(a,b,c,d,xxx)
  real(8),dimension(100) :: a,b,c,d
  integer(8) :: xxx
  do i=1,100
     if (xxx == 0) then
        a(i) = b(i)
     else
        c(i) = d(i)
     endif
  enddo
end subroutine sub_1

program main
  real(8),dimension(100) :: a,b,c,d
  integer(8) :: xxx

  a = 0.
  b = 1.
  c = 0.
  d = 2.
  xxx = 0

  call sub_1(a,b,c,d,xxx)

  do i=1,100
     if (a(i) .ne. 1.) then
        print *,"ng"
     endif
     if (c(i) .ne. 0.) then
        print *,"ng"
     endif
  enddo

  print *,"ok"
end program main

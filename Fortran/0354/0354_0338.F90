program main
  real*8 a(100,100)
  real*8 b(100,100)

  do i=1,100
     do j=1,100
        a(j,i) = 1
        b(j,i) = 1
     enddo
  enddo

  do i=1,100-1
     do j=1,100-1
        call sub(a,i,j)
     enddo
  enddo

  do i=1,100-1
     do j=1,100-1
        call sub(b,i,j)
     enddo
  enddo

  do i=1,100
     do j=1,100
        if (a(j,i) .ne. b(j,i)) then
           print *,"ng"
        endif
     enddo
  enddo

  print *,"ok"
end program main
subroutine sub(a,i,j)
  real*8 a(100,100)
  a(j+1,i+1) = i+j
end subroutine sub

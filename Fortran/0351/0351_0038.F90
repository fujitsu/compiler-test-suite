program main
  complex(kind=4),dimension(1:64) :: src
  complex(kind=8),dimension(1:64) :: dest
  integer,dimension(1:64) :: mask
  call init(src,dest,mask)
  do i=1,2
     call test(src,dest,mask)
  enddo
  do i=1,64
     if(dest(i) .ne. cmplx(i,i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(src,dest,mask)
  complex(kind=4),dimension(1:64) :: src
  complex(kind=8),dimension(1:64) :: dest
  integer,dimension(1:64) :: mask

  do i=1,64
     dest(i) = cmplx(0._4,0._4)
     src(i) = cmplx(real(i,kind=8), real(i,kind=8))
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(src,dest,mask)
  complex(kind=4),dimension(1:64) :: src
  complex(kind=8),dimension(1:64) :: dest
  integer,dimension(1:64) :: mask
  do i=1,64
     dest(i) = src(i)
  enddo

end subroutine test

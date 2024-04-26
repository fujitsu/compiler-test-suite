program main
  integer,dimension(3000,10)::ia
  integer,dimension(3000,10)::ib
  do i=1,3000
     do j=1,10
        ib(i,j) = i+j
     enddo
  enddo
  call sub(ia, ib)
  print *,"OK"
end program main

subroutine sub (ia,ib)
  implicit none
  integer i,j
  integer,dimension(3000,10)::ia
  integer,dimension(3000,10)::ib

  do i=1,3000
     do j=1,10
        ia(i,j) = ib(i,j)+10
     end do
  end do

  if (ia(1000,10) .ne. 1020) then
     print *,"NG1"
  endif
  if (ia(3000,5) .ne. 3015) then
     print *,"NG1"
  endif
end subroutine sub

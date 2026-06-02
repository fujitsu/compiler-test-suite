  real(8),dimension(1:4,1:5,1:4) :: a
  call sub(a,3,3,3)
end
subroutine sub(a,n,m,l)
  logical answer,ans
  real(8),dimension(1:4,1:5,1:4) :: a
  real(8),dimension(1:2,1:3,1:2) :: v1
  ans = .true.
do i = 1,4
  do j = 1,5
     do k = 1,4
        a(k,j,i) = 2.0 + i
     enddo
  enddo
enddo
do i = 1,n
  do j = 1,m
    do k = 1,l
       v1 = a(k:k+1,j:j+2,i:i+1)
       if (answer(v1,a(k,j,i), i) .eqv. .false.) then
          ans = .false.
          continue;
       endif
    enddo
  enddo
enddo
  if (ans .eqv. .false.) then
    write(6,*) "NG"
  else
    write(6,*) "OK"
  endif
end subroutine

logical function answer(v1, a, n)
  real(8) a
  real(8),dimension(1:2,1:3,1:2) :: v1
  answer = 0
  if (a .ne. 2.0 +n) then
      answer = .false.
  else
      answer = .true.
  endif
end function

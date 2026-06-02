  real(8),dimension(1:9,1:9,1:9) :: a
  call sub(a,9,9,9)
end
subroutine sub(a,n,m,l)
  logical answer,ans
  real(8),dimension(1:9,1:9,1:9) :: a
  real(8),dimension(1:9,1:9,1:9) :: v1
  ans = .true.
do i = 1,9
  do j = 1,9
     do k = 1,9
        a(k,j,i) = 2.0 + i
     enddo
  enddo
enddo
do i = 1,n
  do j = 1,m
    do k = 1,l
       v1 = a(k,j,i)
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
  real(8),dimension(1:9,1:9,1:9) :: v1
  answer = 0
  if (a .ne. 2.0 +n) then
      answer = .false.
  else
      answer = .true.
  endif
end function

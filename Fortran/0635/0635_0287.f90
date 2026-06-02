  real(8),dimension(1:5,1:4,1:5) :: a
  call sub(a,3,3,3)
end
subroutine sub(a,n,m,l)
  logical answer,ans
  real(8),dimension(1:5,1:4,1:5) :: a
  real(8),dimension(1:5,1:4,1:5) :: v1
  ans = .true.
do i = 1,5
  do j = 1,4
     do k = 1,5
        a(k,j,i) = 2.0 + i
     enddo
  enddo
enddo
do i = 1,n
  do j = 1,m
    do k = 1,l
      do ii = 1,3
        do jj = 1,3
          do kk = 1,3
            v1(kk:kk+2, jj:jj+1, ii:ii+2) = a(kk:kk+2,jj:jj+1,ii:ii+2)
          enddo
        enddo
      enddo
      if (answer(v1(k,j,i),a(k,j,i), i) .eqv. .false.) then
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
  real(8) v1
  answer = 0
  if (a .ne. 2.0 +n) then
      answer = .false.
  else
      answer = .true.
  endif
end function

  real(8),dimension(1:5,1:5) :: a
  call sub(a,5,5)
end
subroutine sub(a,n,m)
  real(8),dimension(1:5,1:5) :: a
  real(8),dimension(1:5,1:5) :: v1
do i = 1,5
   do j = 1,5
      a(j,i) = 2.0 + i
   enddo
enddo
do i = 1,n
   do j = 1,m
      do k=1,5
         do l=1,5
            v1(l,k) = a(l,k)
         enddo
      enddo
      call foo(v1(j,i),a(j,i), i)
  enddo
enddo
end subroutine

subroutine foo(v1, a, n)
  real(8) a
  real(8) v1
  integer answer
  integer i
  answer = 0
  if (a .eq. 2.0 +n) then
     answer = 1
  endif
  if (answer .eq. 1) then
     write(6,*) "OK"
  endif
end subroutine

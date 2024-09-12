subroutine sub(a,b,n)
real(8),dimension(1:n,1:n) :: a,b

do j=1,n
   do i=1,n
      a(i,j) = a(i,j) + b(i,j)
   enddo
enddo

do j=1,n
   do i=1,n
      a(i,j) = a(i,j) + b(i,j)
   enddo
enddo

do j=1,n
   do i=1,n
      a(i,j) = a(i,j) + b(i,j)
   enddo
enddo

do j=1,n
   do i=1,n
      a(i,j) = a(i,j) + b(i,j)
   enddo
enddo

do j=1,n
   do i=1,n
      a(i,j) = a(i,j) + b(i,j)
   enddo
enddo
end subroutine

subroutine sub2(a,b,n)
real(8),dimension(1:n,1:n) :: a,b

do j=1,n
   do i=1,n
      a(i,j) = a(i,j) + b(i,j)
   enddo
enddo

end subroutine

subroutine sub3(a,b,n)
real(8),dimension(1:n,1:n) :: a,b

do j=1,n
   do i=1,n
      a(i,j) = a(i,j) + b(i,j)
   enddo
enddo

end subroutine

subroutine sub4(a,b,n)
real(8),dimension(1:n,1:n) :: a,b

do j=1,n
   do i=1,n
      a(i,j) = a(i,j) + b(i,j)
   enddo
enddo

end subroutine

subroutine sub5(a,b,n)
real(8),dimension(1:n,1:n) :: a,b

do j=1,n
   do i=1,n
      a(i,j) = a(i,j) + b(i,j)
   enddo
enddo

end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians=1900
real(8),dimension(1:n,1:n) :: a,b
a = 1.
b = 2.
call sub(a,b,n)
call sub2(a,b,n)
call sub3(a,b,n)
call sub4(a,b,n)
call sub5(a,b,n)

if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program

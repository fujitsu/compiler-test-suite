subroutine sub1(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,n
   a(i) = b(i)
enddo

end subroutine

subroutine sub2(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,n
   a(i) = b(i)
enddo
end subroutine

subroutine sub3(a,b,n)
real(8),dimension(1:n) :: a,b

do i=1,n
   a(i) = b(i)
enddo
end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians1=10
real(8),dimension(1:n) :: a,b

a = 0.
b = 1.
call sub1(a,b,n)
call sub2(a,b,n)
call sub3(a,b,n)

if (int(sum(a)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng(a)", int(sum(a)), ians1
endif

end program

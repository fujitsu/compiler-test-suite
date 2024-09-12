subroutine sub1(a,n)
real(8),dimension(1:n) :: a

do i=1,n
   a(i) = i
enddo

end subroutine

subroutine sub2(a,n)
real(8),dimension(1:n) :: a

do i=1,n
   a(i) = i
enddo
end subroutine

subroutine sub3(a,n)
real(8),dimension(1:n) :: a

do i=1,n
   a(i) = i
enddo
end subroutine

subroutine sub4(a,n)
real(8),dimension(1:n) :: a

do i=1,n
   a(i) = i
enddo
end subroutine

subroutine sub5(a,n)
real(8),dimension(1:n) :: a

do i=1,n
   a(i) = i
enddo
end subroutine

subroutine sub6(a,n)
real(8),dimension(1:n) :: a

do i=1,n
   a(i) = i
enddo
end subroutine

subroutine sub7(a,n)
real(8),dimension(1:n) :: a

do i=1,n
   a(i) = i
enddo
end subroutine

subroutine sub8(a,n)
real(8),dimension(1:n) :: a

do i=1,n
   a(i) = i
enddo
end subroutine

subroutine sub9(a,n)
real(8),dimension(1:n) :: a

do i=1,n
   a(i) = i
enddo
end subroutine

subroutine sub10(a,n)
real(8),dimension(1:n) :: a

do i=1,n
   a(i) = i
enddo
end subroutine

program main
integer,parameter :: n=10
integer,parameter :: ians1=55
real(8),dimension(1:n) :: a

a = 0.

call sub1(a,n)
call sub2(a,n)
call sub3(a,n)
call sub4(a,n)
call sub5(a,n)
call sub6(a,n)
call sub7(a,n)
call sub8(a,n)

if (int(sum(a)) .eq. ians1) then
  print *,"ok"
else
  print *,"ng(a)", int(sum(a)), ians1
endif

end program

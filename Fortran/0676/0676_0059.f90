subroutine subr4(c1,c2,c3,n)
complex(kind=4),dimension(1:n) :: c1,c2,c3
do i=1,n
  c1(i) = (c1(i) + c2(i))*c3(i) + (c1(i) - c2(i))*c3(i)
  c1(i) = c1(i) / (c1(i)**2 + c1(i)**2)
enddo
end subroutine

subroutine subr8(c1,c2,c3,n)
complex(kind=8),dimension(1:n) :: c1,c2,c3
do i=1,n
  c1(i) = (c1(i) + c2(i))*c3(i) + (c1(i) - c2(i))*c3(i)
  c1(i) = c1(i) / (c1(i)**2 + c1(i)**2)
enddo
end subroutine

program main
integer,parameter :: n=100
complex(kind=4),dimension(1:n) :: c1,c2,c3
complex(kind=8),dimension(1:n) :: d1,d2,d3
integer,parameter :: ians1 = 15331983
integer,parameter :: error1 = 22
integer,parameter :: ians2 = 15331981
integer,parameter :: error2 = 0
c1 = (1.111111,-0.111111)
c2 = (1.222222,-0.222222)
c3 = (1.333333,-0.333333)
d1 = (-1.111111,0.111111)
d2 = (-1.222222,0.222222)
d3 = (-1.333333,0.333333)
call subr4(c1,c2,c3,n)
call subr8(d1,d2,d3,n)
ires4 = sum(c1)*1000000
ires8 = sum(d1)*1000000
if ((abs(ires4 - ians1) <= error1) .and. (abs(ires8 - ians2) <= error2)) then
  print *,"ok"
else
  print *,"ng : ", ires4, " != ", ians1, " or ", ires8, " != ", ians2
endif
end program

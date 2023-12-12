subroutine sub(c8d1,c8d2,c8d3,c16d1,c16d2,c16d3,n,m)
complex*8  c8d1, c8d2, c8d3
complex*16 c16d1,c16d2,c16d3
integer m,n

c8d1  = cmplx(cabs(c8d2),0.)
c16d1 = cmplx(cdabs(c16d2),0.)
do i=1,n
  c8d1 = c8d1 + cmplx(cabs(c8d2),cabs(c8d3))
  c16d1 = c16d1 + cmplx(cdabs(c16d2),cdabs(c16d3))
enddo
do i=1,n
  c8d1 = c8d1 + (c8d2 - c8d3)
  c16d1 = c16d1 + (c16d2 - c16d3)
enddo
if (cabs(c8d1) > 10.) then
  c8d1 = (1.,1.)
endif
if (cdabs(c16d1) > 10.) then
  c16d1 = (1.,1.)
endif
do i=1,m
  c8d1 = c8d1 + c8d1 * (c8d2 + c8d3)
  c16d1 = c8d1 + c16d1 * (c16d2 + c16d3)
enddo
c8d1 = c8d1 + conjg(c8d1 / (c8d2 + c8d3))
c16d1 = c16d1 + conjg(c16d1 / (c16d2 + c16d3))
end subroutine

program main
integer,parameter :: m=10,n=100
complex*8  c8d1, c8d2, c8d3
complex*16 c16d1,c16d2,c16d3
integer ia1,ia2

c8d1 = (1.1_4,0.9_4)
c8d2 = (1.2_4,0.8_4)
c8d3 = (1.3_4,0.7_4)
c16d1 = (0.1_8,1.9_8)
c16d2 = (0.2_8,1.8_8)
c16d3 = (0.3_8,1.7_8)

call sub(c8d1,c8d2,c8d3,c16d1,c16d2,c16d3,n,m)
ia1 = int(cabs(c8d1))
ia2 = int(cdabs(c16d1))
if ((ia1 == 615867) .and. (ia2 == 1007707)) then
  print *,"ok"
else
  print *,"ng",c8d1,c16d1
endif
end program

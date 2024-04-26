program main
integer(kind=8),dimension(30):: ra1, ra2, ra3
common  /array/ra1,ra2,ra3
integer(kind=8),dimension(30):: ra4, ra5, ra6
integer(kind=8) :: rd1, rd2, rd3
common  /array/rd1, rd2, rd3
integer(kind=8) :: data, ans
integer(kind=8),parameter :: AD=42

call Iinit()

do i=1,30,10
  call sub(ra4,ra5,ra6,i)
enddo

data = 0
data = data + maxval(ra1)-minval(ra4)
data = data + maxval(ra2)-minval(ra5)
data = data + maxval(ra3)-minval(ra6)
ans  = data + (rd1+rd2+rd3)

if (ans==AD) then
  print *,"OK"
else
  print *,"NG"
  print *,ans
endif
end

subroutine sub(ra4,ra5,ra6,i)
integer(kind=8),dimension(30):: ra4, ra5, ra6
integer(kind=8),dimension(30):: ra1, ra2, ra3
common  /array/ra1,ra2,ra3
integer(kind=8) :: rd1, rd2, rd3
common  /array/rd1, rd2, rd3
integer(kind=8) :: rl1, rl2, rl3
integer i

rl1 = maxval(ra1(21:30))
rl2 = maxval(ra2(11:20))
rl3 = maxval(ra3(1:10))

ra4(i:i+9) = ra1(i:i+9) + ra2(i:i+9)
rd1 = rd1 + rl1
ra5(i:i+9) = ra2(i:i+9) + ra3(i:i+9)
rd2 = rd2 + rl2
ra6(i:i+9) = ra3(i:i+9) + ra1(i:i+9)
rd3 = rd3 + rl3

end subroutine

subroutine Iinit
integer(kind=8),dimension(30):: ra1, ra2, ra3
common  /array/ra1,ra2,ra3
integer(kind=8) :: rd1, rd2, rd3
common  /array/rd1, rd2, rd3

ra1 = (/(MOD(i,(30/i))+1, i=1,30)/)
ra2 = ra1
ra3 = ra1
rd1 = minval(ra1)
rd2 = rd1
rd3 = rd2
end subroutine

real :: a
integer, dimension (-3:3) :: ary1
integer, dimension (100) :: ary2
data a /3.78/, ary1 /7 * 1/
data (ary2(i), i=1,100) /100*6/

if (abs(a-3.78_4)>0.0001 )print *,'err'
do i=1,7
if (ary1(i-4).ne.1)print *,'err'
end do
do i=1,100
if (ary2(i).ne.6)print *,'err'
enddo
print *,'pass'
end

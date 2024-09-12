integer a1(30),b1(30),a2(40),b2(40)
data a1/10*-1,10*0,10*1/,a2/10*-1,10*0,10*1,10*2/

w1: where(a1 < 0)
      b1=-1
    elsewhere( a1 == 0 )
      b1=0
    elsewhere
      b1=1
    endwhere w1

w2: where(a2 <= 0)
      where(a2 < 0)
        b2=-1
      elsewhere( a2 == 0 )
        b2=0
      endwhere
    elsewhere
      where(a2 <= 1)
        b2=1
      elsewhere
        b2=2
      endwhere
    endwhere w2

do i=1,30
  if( a1(i) /= b1(i) )print*,'ng1'
enddo
do i=1,40
  if( a2(i) /= b2(i) )print*,'ng2'
enddo

print*,'pass'
end

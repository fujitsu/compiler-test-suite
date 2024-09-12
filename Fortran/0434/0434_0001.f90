  call sss1
  call sss2
  print *,'pass'
contains
  subroutine sss1
integer::a(2,3),b(2),c(3),z(2,3)
integer::z1(2),z2(6)
a=reshape([1,2,3,4,5,6],[2,3])
b=[1,2]
c=[1,2,3]
z=-1
z1=[a(2,b)]
if(z1(1)/=2) print *,'err'
if(z1(2)/=4) print *,'err'
z2=[z(2,b),1,a(c,2)]

if(z2(1)/=-1)  print *,'err'
if(z2(2)/=-1)  print *,'err'
if(z2(3)/=1)  print *,'err'
if(z2(4)/=3)  print *,'err'
if(z2(5)/=4)  print *,'err'
if(z2(6)/=5)  print *,'err'
end subroutine sss1
  subroutine sss2
    integer(8)::ii(10*10*10)
    integer(8)::ri8(1000)
    ii=-1
ri8=[reshape(ii,[10,10,10])]
if(ri8(1000)/=-1) print *,'err'
  end subroutine sss2
end program

       real a(3,2,4,3,2,4,2),b(3,2,4,3,2,4,2),c(3,2,4,3,2,4,2)
       data n2,n3,n4/2,3,4/
       data a,b,c/1152*5.0,1152*2.0,1152*3.0/
       call sub(a,b,c,n2,n3,n4)
       stop
       end
       subroutine sub(a,b,c,n2,n3,n4)
       real a(n3,2,4,3,n2,4,2)
       real b(n3,2,4,3,n2,4,2)
       real c(n3,2,4,3,n2,4,2)
       real r(3,2,4,3,2,4,2)
       data r/1152*2.2/
       do 30 i1=1,n3
       do 30 i2=1,2
       do 30 i3=1,4
       do 20 i4=1,3
       do 20 i5=1,n2
       do 20 i6=1,4
       do 10 i7=1,2
  10   r(i1,i2,i3,i4,i5,i6,i7)=a(i1,i2,i3,i4,i5,i6,i7) -
     +            c(i1,i2,i3,i4,i5,i6,i7) - b(i1,i2,i3,i4,i5,i6,i7)
  20   continue
  30   continue
       print *,r
       end

call sub1; call sub2; call sub3
print*,'pass'
end

subroutine sub1
integer a(3,4),a1(4),a2(3),a3
logical ma(3,4)
data a/ 1,0,0, 0,2,0, 0,0,3, 4,0,0 /
ma=.true.
ma(2,2)=.false.
a1=maxval(a,1)
if(a1(1).ne.1)print*,'ng1'
if(a1(2).ne.2)print*,'ng1'
if(a1(3).ne.3)print*,'ng1'
if(a1(4).ne.4)print*,'ng1'
a2=maxval(a,2)
if(a2(1).ne.4)print*,'ng2'
if(a2(2).ne.2)print*,'ng2'
if(a2(3).ne.3)print*,'ng2'
a1=maxval(a,1,ma)
if(a1(1).ne.1)print*,'ng3'
if(a1(2).ne.0)print*,'ng3'
if(a1(3).ne.3)print*,'ng3'
if(a1(4).ne.4)print*,'ng3'
a2=maxval(a,2,ma)
if(a2(1).ne.4)print*,'ng4'
if(a2(2).ne.0)print*,'ng4'
if(a2(3).ne.3)print*,'ng4'
a1=maxval(a,dim=1,mask=ma)
if(a1(1).ne.1)print*,'ng5'
if(a1(2).ne.0)print*,'ng5'
if(a1(3).ne.3)print*,'ng5'
if(a1(4).ne.4)print*,'ng5'
a2=maxval(a,dim=2,mask=ma)
if(a2(1).ne.4)print*,'ng6'
if(a2(2).ne.0)print*,'ng6'
if(a2(3).ne.3)print*,'ng6'
ma(1,4)=.false.
a3=maxval(a,ma)
if(a3.ne.3)print*,'ng7'
print*,'maxval pass'
end subroutine

subroutine sub2
integer a(3,4),a1(4),a2(3),a3
logical ma(3,4)
data a/ -1,0,0, 0,-2,0, 0,0,-3, -4,0,0 /
ma=.true.
ma(2,2)=.false.
a1=minval(a,1)
if(a1(1).ne.-1)print*,'ng1'
if(a1(2).ne.-2)print*,'ng1'
if(a1(3).ne.-3)print*,'ng1'
if(a1(4).ne.-4)print*,'ng1'
a2=minval(a,2)
if(a2(1).ne.-4)print*,'ng2'
if(a2(2).ne.-2)print*,'ng2'
if(a2(3).ne.-3)print*,'ng2'
a1=minval(a,1,ma)
if(a1(1).ne.-1)print*,'ng3'
if(a1(2).ne.0)print*,'ng3'
if(a1(3).ne.-3)print*,'ng3'
if(a1(4).ne.-4)print*,'ng3'
a2=minval(a,2,ma)
if(a2(1).ne.-4)print*,'ng4'
if(a2(2).ne.0)print*,'ng4'
if(a2(3).ne.-3)print*,'ng4'
a1=minval(a,dim=1,mask=ma)
if(a1(1).ne.-1)print*,'ng5'
if(a1(2).ne.0)print*,'ng5'
if(a1(3).ne.-3)print*,'ng5'
if(a1(4).ne.-4)print*,'ng5'
a2=minval(a,dim=2,mask=ma)
if(a2(1).ne.-4)print*,'ng6'
if(a2(2).ne.0)print*,'ng6'
if(a2(3).ne.-3)print*,'ng6'
ma(1,4)=.false.
a3=minval(a,ma)
if(a3.ne.-3)print*,'ng7'
print*,'minval pass'
end subroutine

subroutine sub3
integer a(2,3),b(2,3)
logical ma(2,3)
data a/1,2,0,3,4,5/
data b/1,2,3,4,5,6/
ma=.true.
ma(1,2)=.false.
if(product(a).ne.0)print*,'ng1'
if(product(a,ma).ne.120)print*,'ng2'
if(sum(b).ne.21)print*,'ng3'
if(sum(b,ma).ne.18)print*,'ng4'
print*,'pass product sum '
end subroutine

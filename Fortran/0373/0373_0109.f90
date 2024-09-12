call sub1;call sub2
print*,'pass'
end

subroutine sub1
integer a(3,4),a1(4),a2(3),a3(2)
logical ma(3,4)
data a/ 1,0,0, 0,1,0, 0,0,1, 1,0,0 /
ma=.true.
ma(2,2)=.false.
a1=maxloc(a,1)
if(a1(1).ne.1)print*,'ng1'
if(a1(2).ne.2)print*,'ng1'
if(a1(3).ne.3)print*,'ng1'
if(a1(4).ne.1)print*,'ng1'
a2=maxloc(a,2)
if(a2(1).ne.1)print*,'ng2'
if(a2(2).ne.2)print*,'ng2'
if(a2(3).ne.3)print*,'ng2'
a1=maxloc(a,1,ma)
if(a1(1).ne.1)print*,'ng3'
if(a1(2).ne.1)print*,'ng3'
if(a1(3).ne.3)print*,'ng3'
if(a1(4).ne.1)print*,'ng3'
a2=maxloc(a,2,ma)
if(a2(1).ne.1)print*,'ng4'
if(a2(2).ne.1)print*,'ng4'
if(a2(3).ne.3)print*,'ng4'
a1=maxloc(a,dim=1,mask=ma)
if(a1(1).ne.1)print*,'ng5'
if(a1(2).ne.1)print*,'ng5'
if(a1(3).ne.3)print*,'ng5'
if(a1(4).ne.1)print*,'ng5'
a2=maxloc(a,dim=2,mask=ma)
if(a2(1).ne.1)print*,'ng6'
if(a2(2).ne.1)print*,'ng6'
if(a2(3).ne.3)print*,'ng6'
ma(1,1)=.false.
a3=maxloc(a,ma)
if(a3(1).ne.3)print*,'ng7'
if(a3(2).ne.3)print*,'ng7'
print*,'maxloc pass'
end subroutine

subroutine sub2
integer a(3,4),a1(4),a2(3),a3(2)
logical ma(3,4)
data a/ -1,0,0, 0,-1,0, 0,0,-1, -1,0,0 /
ma=.true.
ma(2,2)=.false.
a1=minloc(a,1)
if(a1(1).ne.1)print*,'ng1'
if(a1(2).ne.2)print*,'ng1'
if(a1(3).ne.3)print*,'ng1'
if(a1(4).ne.1)print*,'ng1'
a2=minloc(a,2)
if(a2(1).ne.1)print*,'ng2'
if(a2(2).ne.2)print*,'ng2'
if(a2(3).ne.3)print*,'ng2'
a1=minloc(a,1,ma)
if(a1(1).ne.1)print*,'ng3'
if(a1(2).ne.1)print*,'ng3'
if(a1(3).ne.3)print*,'ng3'
if(a1(4).ne.1)print*,'ng3'
a2=minloc(a,2,ma)
if(a2(1).ne.1)print*,'ng4'
if(a2(2).ne.1)print*,'ng4'
if(a2(3).ne.3)print*,'ng4'
a1=minloc(a,dim=1,mask=ma)
if(a1(1).ne.1)print*,'ng5'
if(a1(2).ne.1)print*,'ng5'
if(a1(3).ne.3)print*,'ng5'
if(a1(4).ne.1)print*,'ng5'
a2=minloc(a,dim=2,mask=ma)
if(a2(1).ne.1)print*,'ng6'
if(a2(2).ne.1)print*,'ng6'
if(a2(3).ne.3)print*,'ng6'
ma(1,1)=.false.
a3=minloc(a,ma)
if(a3(1).ne.3)print*,'ng7'
if(a3(2).ne.3)print*,'ng7'
print*,'minloc pass'
end subroutine

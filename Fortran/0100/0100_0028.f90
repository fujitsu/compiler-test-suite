
real(kind=2) :: r2=4
real(kind=2) :: r2_2
complex(kind=2) :: c2=(5_2,6_2)
complex(kind=2) :: c2_2
complex(2)::dest(10),src(10)
complex(2)::cc1,cc2
r2=-r2
c2=-c2
r2_2=+5
c2_2=+(5,6)
src(5)=(10.1,20.2)
src(1)=(30.1,40.2)
cc2=(50.5,60.6)
cc1     = - cc2 
dest(5) = - src(5) 
dest(4) = - src(5)+src(1) 
if(abs(dest(5) - (-10.1,-20.2))>0.01)print*,"1011"
if(abs(cc1 - (-50.5,-60.6))>0.01)print*,"1021"
if(abs(dest(4) - (20,20))>0.05)print*,"1031",cmplx(dest(4),kind=4)
if(r2 .ne. -4)print*,"101"
if(c2 .ne. -(5_2,6_2))print*,"102"
if(r2_2 .ne. +5)print*,"103",real(r2_2,4)
if(c2_2 .ne. +(5,6))print*,"104",cmplx(c2_2,kind=4)

print*,"pass"
end

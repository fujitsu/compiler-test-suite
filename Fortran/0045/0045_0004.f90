block
Intrinsic :: HYPOT
real*16,parameter :: xx1 =1
real*16,parameter :: yy1=5

real ::rslt1=HYPOT(xx1+2,yy1-1)

if(.not.(rslt1>4.99 .and. rslt1<5.01)) print *,101
        print *, "pass"
end block
end

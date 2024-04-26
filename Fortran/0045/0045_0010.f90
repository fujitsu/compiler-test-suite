        program pro
 real,parameter :: x1(2,2)=RESHAPE([10,20,30,40],[2,2])

 real,parameter :: y1(2,2)=RESHAPE([50,60,70,80],[2,2])

real:: rslt1(2) = SUM(HYPOT(x1,y1),2)

 if(.not.(rslt1(1)>127.13 .and. rslt1(1)<127.15)) print *,101
 if(.not.(rslt1(2)>152.67 .and. rslt1(2)<152.69)) print *,102

 print*,"pass"
end

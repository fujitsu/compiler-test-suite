        program pro
 real,parameter :: x1(2,2)=RESHAPE([1,2,4,5],[2,2])

 real,parameter :: y1(2,2)=RESHAPE([4,5,7,1],[2,2])

 real:: rslt1(1:2,1:2) = HYPOT(x1(1:2,1:2),y1(1:2,1:2))

    if (.not.((rslt1(1,1))>4.11 .and.  (rslt1(1,1))<4.13)) print *,101
    if (.not.((rslt1(2,1))>5.37 .and.  (rslt1(2,1))<5.39)) print *,102
    if (.not.((rslt1(1,2))>8.05 .and.  (rslt1(1,2))<8.07)) print *,103
    if (.not.((rslt1(2,2))>5.08 .and.  (rslt1(2,2))<5.10)) print *,104

    print*,"pass"

 end

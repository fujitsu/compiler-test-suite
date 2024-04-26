        program pro
 real,parameter :: x1(2,2)=RESHAPE([4,6,2,7],[2,2])
 real,parameter :: y1(2,2)=RESHAPE([1,2,4,5],[2,2])
 real:: rslt1(2,2) = HYPOT(y=y1,x=x1)

    if (.not.((rslt1(1,1))>4.11 .and.  (rslt1(1,1))<4.14)) print *,101,rslt1
    if (.not.((rslt1(2,1))>6.31 .and.  (rslt1(2,1))<6.33)) print *,102
    if (.not.((rslt1(1,2))>4.46 .and.  (rslt1(1,2))<4.48)) print *,103
    if (.not.((rslt1(2,2))>8.59 .and.  (rslt1(2,2))<8.61)) print *,104
 print*,"pass"
end

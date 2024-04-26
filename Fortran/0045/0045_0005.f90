block
real::rslt1(2,2)=HYPOT(Reshape((/10.0,20.0,10.0,20.0/),[2,2]),Reshape((/20.0,10.0,20.0,10.0/),[2,2]))
if(.not.(rslt1(1,1)>22.34 .and. rslt1(1,1)<22.38)) print *,101
if(.not.(rslt1(1,2)>22.34 .and. rslt1(1,2)<22.38)) print *,102
if(.not.(rslt1(2,1)>22.34 .and. rslt1(2,1)<22.38)) print *,103
if(.not.(rslt1(2,2)>22.34 .and. rslt1(2,2)<22.38)) print *,104
        print *, "pass"
end block
end

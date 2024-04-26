complex,parameter::arr(2,2)= reshape([(3.0,3.0),(4.0,4.0),(3.0,3.0),(4.0,4.0)],[2,2])
real::x(2)=norm2(arr%im,1)
real::y = norm2(arr%re) 
        if(.not.(x(2)<=5.1 .and. x(2)>=4.9)) print*,101,x(2)
        if(.not.(x(1)<=5.4 .and. x(1)>=4.9)) print*,102,x(1)
        if(.not.(y>7.071.and.y<7.072))print*,103,y
        print*,"pass"
        end


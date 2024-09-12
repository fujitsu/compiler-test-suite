program pro
integer,parameter::x(1) =30
integer::y(1)= findloc(x,30.4,dim=1,mask=(x>10))
        if(y(1)/=0) print *, 101
        print*,'pass'
        end


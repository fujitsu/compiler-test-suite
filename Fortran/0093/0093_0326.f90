complex,parameter :: cc(2) = [(1,2),(3,4)] 
real,parameter :: pp(*) = cc(:)%im + cc(:)%re
        if(size(pp) .ne. 2) print*,"121"
        if(sizeof(pp) .ne. 8) print*,"122"
        if(any(pp .ne. [3,7])) print*,"122"
print*,"Pass"
end

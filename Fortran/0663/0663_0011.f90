        real,dimension(2048),TARGET :: x
        real,dimension(:),pointer :: a,b
        a=>x(1:1024)
        b=>x(1025:2048) 
        print *,'pass'
        end

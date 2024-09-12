        common /ca/a,b
        real*16 a(10),b(10),c(10)
        a=-1.0
        b=-0.0
        c=a/b
        write(6,*)c
        end

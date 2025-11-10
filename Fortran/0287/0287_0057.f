        program main
        equivalence( i,r )
        r  = fun()
        print 1,i
 1             format(1h ,z8.8)
        end
!
        real function fun()  
        equivalence( i,r )
        i = z'ff800001'
        fun = r
        end

	integer*1,dimension(:),allocatable::a,b,c
	real,dimension(:),allocatable::r
        n=10
        allocate(a(n),b(n),c(n),r(n))
        call random_number(r)
        a=(r-0.5)*huge(a)*2
	where ( a < 0 ) 
          c = ibclr(a,bit_size(a)-1) 
        elsewhere
          c = a
        end where
        print *,merge("OK","NG",all(c>0))
        end

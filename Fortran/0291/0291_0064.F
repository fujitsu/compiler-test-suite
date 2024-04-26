        subroutine sub1(a,b,n,l)
	real,dimension(n):: a
	real,dimension(n):: b
        logical l
        l = any(a/=b)
        end

        subroutine sub2(a, b, n,l) 
        real a(n) 
        real b(n) 
        logical l1,l
        integer j1
        l1 = .FALSE. 
        do j1 = 1, n 
           l1 = l1 .or. a(j1).ne.b(j1) 
        end do 
        l = l1 
        end  
!
        real,allocatable,dimension(:) :: a,b
        integer rate,n,c1,c2
        logical l
        n=100
        allocate(a(n),b(n))
        call random_number(a)
        b=a
        call system_clock(c1,rate)
        call sub1(a,b,n,l)
        call system_clock(c2,rate)
        print *,merge("OK","NG",.not.l)
        call system_clock(c1,rate)
        call sub2(a,b,n,l)
        call system_clock(c2,rate)
        print *,merge("OK","NG",.not.l)
        end

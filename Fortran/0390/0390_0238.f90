        logical(1)::l1(1)=.false.
        logical(2)::l2(1)=.false.
        logical(4)::l4(1)=.false.
        logical(8)::l8(1)=.false.
        do  concurrent(k=1:10,l1(1))
        end do
        do  concurrent(k=1:10,l2(1))
        end do
        do  concurrent(k=1:10,l4(1))
        end do
        do  concurrent(k=1:10,l8(1))
        end do
        do  concurrent(k=1:10,k==1)
        end do
        print *,'pass'
        end

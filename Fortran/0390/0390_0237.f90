        logical::l(1)=.false.
        do  concurrent(k=1:10000000,l(1))
        end do
print *,'pass'
        end

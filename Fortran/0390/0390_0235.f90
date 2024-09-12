        logical::l(2)=[.false.,.false.]
        do  concurrent(k=1:10000000,(l(1).neqv.l(2)))
        end do
        k1=1
        do  concurrent(k=k1:10000000,(l(1).neqv.l(2)))
        end do
2       continue
print *,'pass'
        end

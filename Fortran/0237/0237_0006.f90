    subroutine sub(n1,n2,n3)
    integer(8) n1,n2,n3
    integer(8),dimension( n3  )::f,ff
    integer*8 ii
    f=1
    ff=f
    ff=f
    

!$omp single private(ii)
!$omp end single copyprivate(f)
    end subroutine sub
print *,'pass'
end



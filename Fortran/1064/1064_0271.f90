     1  PROGRAM MAIN
     2  complex :: cc(4) = (1,2)
     4  integer :: N = 4
     5        if(any(cc .ne. (1,2))) print*,"121",cc
       !$OMP PARALLEL DO REDUCTION(+:cc)
     7        DO I = 1, N
     9          cc(I) = (3,4)
    12        ENDDO
            if(any(abs(cc -(4,6))>0.001)) print*,"122",cc
print *,'pass'
    15        END

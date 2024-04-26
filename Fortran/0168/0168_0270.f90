     1  PROGRAM MAIN
     2  complex :: cc(4) = (1,2)
      real :: pp(4) = 2
     4  integer :: N = 4
     5        if(any(cc .ne. (1,2))) print*,"121",cc
       !$OMP PARALLEL DO REDUCTION(+:pp)
     7        DO I = 1, N
     9          cc(I) = (3,4)
              pp(I) = pp(I) + cc(I)%im + 1
    12        ENDDO
            if(any(abs(pp -7)>0.001)) print*,"122",pp
print *,'pass'
    15        END

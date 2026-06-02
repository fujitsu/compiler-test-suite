integer::a(5,5)=reshape((/11,21,31,41,51,&
                          12,22,32,42,52,&
                          13,23,33,43,53,&
                          14,24,34,44,54,&
                          15,25,35,45,55/),(/5,5/))
integer::b(5,5)=0
integer,parameter::n=5
!$omp parallel workshare
forall ( i=2:n-1, j= 2:n-1 )
    a(i,j) = a(i,j-1) + a(i,j+1) + a(i-1,j) + a(i+1,j)
    b(i,j) = 500 / a(i,j)
end forall
!$omp end parallel workshare
if ( any((/a/)/=(/11, 21, 31, 41,51, &
                  12, 88,128,168,52, &
                  13, 92,132,172,53, &
                  14, 96,136,176,54, &
                  15, 25, 35, 45,55/)) ) print *,"fail"
if ( any((/b/)/=(/ 0, 0, 0, 0, 0, &
                   0, 5, 3, 2, 0, &
                   0, 5, 3, 2, 0, &
                   0, 5, 3, 2, 0, &
                   0, 0, 0, 0, 0/)) ) print *,"fail"
print *,'pass'
end

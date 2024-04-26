subroutine sub1(A,B,R1,R2,R3,m,n,k)
  dimension A(10,10),B(10,10),R1(10,10),R2(10,10),R3(10,10)
  dimension RR1(10,10),RR2(10,10),RR3(10,10)
  integer(4) :: m,n,k,i,j,L
  real(4) :: mul,answer1,answer2,answer3
  
  mul = 5.0
  RR1 = 1.0
  RR2 = 2.0
  RR3 = 3.0

  do i = 1, m
    do j = 1,n
      do L = 1,k
        answer1 = R1(L,j) * mul
        answer2 = R2(L,j) * mul
        answer3 = R3(L,j) * mul
        RR1(L,j)=RR1(L,j) + A(j,L)*answer1
        RR2(L,j)=RR2(L,j) + B(j,L)+answer2
        if (i .eq. 2) goto 10
        RR3(L,j)=RR3(L,j) + answer3
      enddo
    enddo
  enddo
10  write(6,*) RR1(10,10)
  write(6,*) RR2(10,10)
  write(6,*) RR3(10,10)
end

  dimension A(10,10),B(10,10),R1(10,10),R2(10,10),R3(10,10)
  do i = 1,10
    do j = 1,10
        A(i,j) = i*2
        B(i,j) = i*3
        R1(i,j) = i*4
        R2(i,j) = i*5
        R3(i,j) = i*6
    enddo
  enddo
  call sub1(A,B,R1,R2,R3,10,10,10)
end

subroutine sub1(A,B,R1,R2,R3,m,n,k)
  dimension A(10,10),B(10,10),R1(10,10),R2(10,10),R3(10,10)
  dimension RR1(10,10),RR2(10,10),RR3(10,10)
  dimension answer1(10,10), answer2(10,10), answer3(10,10)
  integer(4) :: m,n,k,i,j,L
  real(4) :: mul
  real(4) :: RR1_answer, RR2_answer, RR3_answer
  
  mul = 5.0
  RR1 = 1.0
  RR2 = 2.0
  RR3 = 3.0
  answer1 = 0.0
  answer2 = 0.0
  answer3 = 0.0
  RR1_answer = 0.0
  RR2_answer = 0.0
  RR3_answer = 0.0

  do i = 1, m-2
    do j = 1,n
      do L = 4,k
        answer1(i+2,L-3) = R1(L,j) * mul
        answer2(i,L-2) = R2(L,j) * mul
        answer3(i+1,L) = R3(L,j) * mul
        RR1(L,j)=RR1(L,j) + A(j,L)*answer1(i+2, L-3)
        RR2(L,j)=RR2(L,j) + B(j,L)+answer2(i,L-2)
        RR3(L,j)=RR3(L,j) + answer3(i+1,L)
      enddo
    enddo
  enddo
  do i = 1, 10
    do j = 1, 10
      RR1_answer = RR1_answer+RR1(j,i)
      RR2_answer = RR2_answer+RR2(j,i)
      RR3_answer = RR3_answer+RR3(j,i)
    enddo
  enddo
  if (RR1_answer .ne. 862500.000) then
     write(6,*) "NG"
  else if (RR2_answer .ne. 107440.000) then
     write(6,*) "NG"
  else if (RR3_answer .ne. 117900.000) then
     write(6,*) "NG"
  else
    write(6,*) "OK"
  endif
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

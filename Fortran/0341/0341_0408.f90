subroutine sub1(A,B,R1,R2,R3,m,n,k)
  dimension A(16,16),B(16,16),R1(16,16),R2(16,16),R3(16,16)
  dimension RR1(16,16),RR2(16,16),RR3(16,16)
  integer(4) :: m,n,k,i,j,L
  real(4) :: mul
  real(4) :: RR1_answer, RR2_answer, RR3_answer
  
  mul = 5.0
  RR1 = 1.0
  RR2 = 2.0
  RR3 = 3.0
  RR1_answer = 0.0
  RR2_answer = 0.0
  RR3_answer = 0.0

  do i = 1, m
    do j = 1,n
      do L = 1,k,8
        R1(L,j) = i
        R2(L,j) = j
        R3(L,j) = L
        RR1(L,j)=R1(L,j) + A(j,L)
        RR2(L,j)=R2(L,j) + B(j,L)
        RR3(L,j)=R3(L,j) * mul
        R1(L+1,j) = i
        R2(L+1,j) = j
        R3(L+1,j) = L+1
        RR1(L+1,j)=R1(L+1,j) + A(j,L+1)
        RR2(L+1,j)=R2(L+1,j) + B(j,L+1)
        RR3(L+1,j)=R3(L+1,j) * mul
        R1(L+2,j) = i
        R2(L+2,j) = j
        R3(L+2,j) = L+2
        RR1(L+2,j)=R1(L+2,j) + A(j,L+2)
        RR2(L+2,j)=R2(L+2,j) + B(j,L+2)
        RR3(L+2,j)=R3(L+2,j) * mul
        R1(L+3,j) = i
        R2(L+3,j) = j
        R3(L+3,j) = L+3
        RR1(L+3,j)=R1(L+3,j) + A(j,L+3)
        RR2(L+3,j)=R2(L+3,j) + B(j,L+3)
        RR3(L+3,j)=R3(L+3,j) * mul
        R1(L+4,j) = i
        R2(L+4,j) = j
        R3(L+4,j) = L+4
        RR1(L+4,j)=R1(L+4,j) + A(j,L+4)
        RR2(L+4,j)=R2(L+4,j) + B(j,L+4)
        RR3(L+4,j)=R3(L+4,j) * mul
        R1(L+5,j) = i
        R2(L+5,j) = j
        R3(L+5,j) = L+5
        RR1(L+5,j)=R1(L+5,j) + A(j,L+5)
        RR2(L+5,j)=R2(L+5,j) + B(j,L+5)
        RR3(L+5,j)=R3(L+5,j) * mul
        R1(L+6,j) = i
        R2(L+6,j) = j
        R3(L+6,j) = L+6
        RR1(L+6,j)=R1(L+6,j) + A(j,L+6)
        RR2(L+6,j)=R2(L+6,j) + B(j,L+6)
        RR3(L+6,j)=R3(L+6,j) * mul
        R1(L+7,j) = i
        R2(L+7,j) = j
        R3(L+7,j) = L+7
        RR1(L+7,j)=R1(L+7,j) + A(j,L+7)
        RR2(L+7,j)=R2(L+7,j) + B(j,L+7)
        RR3(L+7,j)=R3(L+7,j) * mul
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
  if (RR1_answer .ne. 2700.00000) then
     write(6,*) "NG"
  else if (RR2_answer .ne. 2200.00000) then
     write(6,*) "NG"
  else if (RR3_answer .ne. 2750.00000) then
     write(6,*) "NG"
  else
    write(6,*) "OK"
  endif
end

  dimension A(16,16),B(16,16),R1(16,16),R2(16,16),R3(16,16)
  do i = 1,16
    do j = 1,16
        A(i,j) = i*2
        B(i,j) = i*3
        R1(i,j) = i*4
        R2(i,j) = i*5
        R3(i,j) = i*6
    enddo
  enddo
  call sub1(A,B,R1,R2,R3,16,16,16)
end

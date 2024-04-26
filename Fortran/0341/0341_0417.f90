subroutine sub1(A,B,R1,R2,R3,m,n,k)
  integer(4) :: A,B,R1,R2,R3
  integer(4) :: RR1,RR2,RR3
  integer(4) :: m,n,k,i,j,L
  integer(4) :: mul,answer1,answer2,answer3
  
  mul = 5
  RR1 = 1
  RR2 = 2
  RR3 = 3

  do i = 1, m
    do j = 1,n
      do L = 1,k
        answer1 = R1 * mul
        answer2 = R2 * mul
        answer3 = R3 * mul
        RR1=RR1 + A*answer1
        RR2=RR2 + B+answer2
        RR3=RR3 + answer3
      enddo
    enddo
  enddo
  if (RR1 .ne. 4800001) then
     write(6,*) "NG"
  else if (RR2 .ne. 336002) then
     write(6,*) "NG"
  else if (RR3 .ne. 360003) then
     write(6,*) "NG"
  else
    write(6,*) "OK"
  endif
end

  integer(4) A,B,R1,R2,R3
  do i = 1,10
    do j = 1,10
        A = i*2
        B = i*3
        R1 = i*4
        R2 = i*5
        R3 = i*6
    enddo
  enddo
  call sub1(A,B,R1,R2,R3,10,10,12)
end

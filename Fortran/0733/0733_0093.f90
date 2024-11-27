      integer count
      Real  F531_IN(404),MSYEAR2(101,4), X
      data f531_in(5:8)/5,6,7,8/
      call ASSIGN(F531_IN,COUNT,MSYEAR2)
      write(1,*)count,MSYEAR2(2,1:4)
      rewind 1
      read(1,*) i1,a1,a2,a3,a4
      if (i1/=405)print *,'error-1'
      if (any(abs((/a1,a2,a3,a4/)-(/5,6,7,8/))>0.0001))print *,'error-2'
     print *,'pass'
      End

      subroutine ASSIGN(A_IN,CNT,V_IN)
      Integer CNT
      Real A_IN(404), V_IN(101,4)

      cnt=1
       do i=1,101
       do j=1,4
          V_IN(I,J) = A_IN(CNT)
          CNT = CNT + 1
      enddo
      enddo
      End

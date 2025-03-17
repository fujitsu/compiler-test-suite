      subroutine sub(i)
       integer::a,bb(i)
        bb(5)=1
        a = bb(5)
      if (a/=1)print *,'error'
      end
      call sub(5)
      print *,'pass'
      end

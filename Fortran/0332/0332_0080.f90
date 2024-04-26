    program foralls
     character(len=5),dimension(5)::ch5
     character(len=3),dimension(5)::ch3
      ch5 = (/'AaAaA','BbBbB','CcCcC','DdDdD','EeEeE'/)
      ch3 = (/'ZzZ','YyY','XxX','WwW','VvV'/)
      call sub1(ch5,ch3,5)
      if (any(ch5/=(/'ZzZ  ','YyY  ','XxX  ','WwW  ','VvV  '/)))  then
        print *,'#ch5->',ch5
      endif
      print *,'pass'
    end program foralls

    subroutine sub1(ch5,ch3,m)
     character(len=*),dimension(m)::ch5
     character(len=*),dimension(m)::ch3
      forall(i=1:m)
        ch5(i)=ch3(i)
      endforall
    end subroutine

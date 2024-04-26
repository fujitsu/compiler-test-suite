    program foralls
     character(4),dimension(3)::ch4
     character(3),dimension(3)::ch3
      ch4 = (/'abcd','efgh','ijkl'/)
      ch3 = (/'ABC','DEF','GHI'/)
      call sub(ch4,ch3,4,3)
      if (any(ch4/=(/'ABC ','DEF ','GHI '/))) print *,'#ch4->',ch4
      print *,'pass'
    end program foralls

    subroutine sub(ch4,ch3,m,n)
     character(len=m),dimension(3)::ch4
     character(len=3),dimension(3)::ch3
      forall(i=1:3)
        ch4(i)=ch3(i)
      endforall
    end subroutine

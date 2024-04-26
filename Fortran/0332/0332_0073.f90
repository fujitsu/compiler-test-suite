    program foralls
     character(4),dimension(3)::ch4
     character(3),dimension(3)::ch3
      ch4 = (/'abcd','efgh','ijkl'/)
      ch3 = (/'ABC','DEF','GHI'/)
      forall(i=1:3)
        ch4(i)=ch3(i)//'Z'
      endforall
      if (any(ch4/=(/'ABCZ','DEFZ','GHIZ'/))) print *,'#ch4->',ch4
      print *,'pass'
    end program foralls

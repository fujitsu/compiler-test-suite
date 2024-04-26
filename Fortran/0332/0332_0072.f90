    program foralls
     character(4),dimension(3)::ch
      ch = (/'abcd','efgh','ijkl'/)
      forall(i=1:2)
        ch(i+1)=ch(i)
      endforall
      if (any(ch/=(/'abcd','abcd','efgh'/))) print *,'#ch->',ch
      ch = (/'abcd','efgh','ijkl'/)
      forall(i=1:2)
        ch(i)=ch(i+1)//'a'
      endforall
      if (any(ch/=(/'efgh','ijkl','ijkl'/))) print *,'#ch->',ch
      print *,'pass'
    end program foralls

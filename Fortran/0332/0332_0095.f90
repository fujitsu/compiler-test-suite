    program foralls
      integer(8)::i1,i2,i3,a(4),j
      i1=2147483647_8
      i2=2147483650_8
      i3=1_8
      forall(j=i1:i2:i3)
        a(j-2147483646_8)=j
      endforall
      if (any(a/=(/2147483647_8,2147483648_8,2147483649_8,2147483650_8/))) then
        print *,a
      endif
      print *,'pass'
    end program foralls

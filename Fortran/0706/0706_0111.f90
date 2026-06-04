c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      character (len=2 ),parameter::x1='ab'
      character (len=2), dimension( len((/x1      /))):: d=x1
      common j;j=2
      call s11(x1,d); call s12(x1,d); call s13(x1,d);call s14;call s15
      call s20
      call s21(x1,d); call s22(x1,d); call s23(x1,d);call s24;call s25
      end
      subroutine s11( x1, d  )
      entry      s12( x1, d  )
      entry      s13( x1, d  )
      character (len=j )::x1
      character (len=*), dimension(len((/x1/))):: d
      common j
      if (x1/='ab')print *,'fail';if (len(x1)/=2)print *,'fail'
      if (any(d/='ab'))print *,'fail';if (len(d)/=2)print *,'fail'
      if (ubound(d,dim=1)/=2)print *,'fail'
      return
      entry      s14(); entry      s15()
      end
      subroutine s20()
      common j
      character (len=j )::x1
      character (len=*), dimension(len((/x1/))):: d
      return
      entry      s21( x1, d  )
      entry      s22( x1, d  )
      entry      s23( x1, d  )
      if (x1/='ab')print *,'fail';if (len(x1)/=2)print *,'fail'
      if (any(d/='ab'))print *,'fail';if (len(d)/=2)print *,'fail'
      if (ubound(d,dim=1)/=2)print *,'fail'
      return
      entry      s24(); entry      s25()
      end

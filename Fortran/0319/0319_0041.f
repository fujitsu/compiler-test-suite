      subroutine sub_l(ch1,ch2,ch)
      character*(*) ch1,ch2,ch
      if ( (ch1//ch2) > (ch2//ch1) ) then
         ch = '0123456789          '
      else
         ch = 'abcdefghij          '
      endif
      return
      end
      character*10 cht,chb
      character*20 ch_ans
      cht='0123456789'//'abcdefghij'
      chb='0123456789'//'abcdefghii'
      call sub_l(cht,chb,ch_ans)
      print *,adjustr(ch_ans),'+test end'
      stop
      end

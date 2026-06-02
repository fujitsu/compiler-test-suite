      call aaaa
      print *,'pass'
      contains
      subroutine aaaa
      real*16 q,q1(1),q2(1,1),q3(1,1,1),q4(1,1,1,1),
     1q5(1,1,1,1,1),q6(1,1,1,1,1,1),q7(1,1,1,1,1,1,1)
      q=1
      q1=1
      q2=1
      q3=1
      q4=1
      q5=1
      q6=1
      q7=1
      call suba001((/q1/),1)
      call suba001((/q2/),1)
      call suba001((/q3/),1)
      call suba001((/q4/),1)
      call suba001((/q5/),1)
      call suba001((/q6/),1)
      call suba001((/q7/),1)

      call suba001((/+q1/),1)
      call suba001((/+q2/),1)
      call suba001((/+q3/),1)
      call suba001((/+q4/),1)
      call suba001((/+q5/),1)
      call suba001((/+q6/),1)
      call suba001((/+q7/),1)

      call suba001((/(/+q1/)/),1)
      call suba001((/(/+q2/)/),1)
      call suba001((/(/+q3/)/),1)
      call suba001((/(/+q4/)/),1)
      call suba001((/(/+q5/)/),1)
      call suba001((/(/+q6/)/),1)
      call suba001((/(/+q7/)/),1)

      call suba001((/+(/+q1/)/),1)
      call suba001((/+(/+q2/)/),1)
      call suba001((/+(/+q3/)/),1)
      call suba001((/+(/+q4/)/),1)
      call suba001((/+(/+q5/)/),1)
      call suba001((/+(/+q6/)/),1)
      call suba001((/+(/+q7/)/),1)
      call suba001((/-(/-q1/)/),1)
      call suba001((/-(/-q2/)/),1)
      call suba001((/-(/-q3/)/),1)
      call suba001((/-(/-q4/)/),1)
      call suba001((/-(/-q5/)/),1)
      call suba001((/-(/-q6/)/),1)
      call suba001((/-(/-q7/)/),1)

      call suba001((/q1+q1-q1/),1)
      call suba001((/q2+q2-q2/),1)
      call suba001((/q3+q3-q3/),1)
      call suba001((/q4+q4-q4/),1)
      call suba001((/q5+q5-q5/),1)
      call suba001((/q6+q6-q6/),1)
      call suba001((/q7+q7-q7/),1)

      call suba001((/(/q1/)**(/q1/)/),1)
      call suba001((/(/q2/)**(/q2/)/),1)
      call suba001((/(/q3/)**(/q3/)/),1)
      call suba001((/(/q4/)**(/q4/)/),1)
      call suba001((/(/q5/)**(/q5/)/),1)
      call suba001((/(/q6/)**(/q6/)/),1)
      call suba001((/(/q7/)**(/q7/)/),1)

      call suba001((/q1**q1-q1+q1/),1)
      call suba001((/q2**q2-q2+q2/),1)
      call suba001((/q3**q3-q3+q3/),1)
      call suba001((/q4**q4-q4+q4/),1)
      call suba001((/q5**q5-q5+q5/),1)
      call suba001((/q6**q6-q6+q6/),1)
      call suba001((/q7**q7-q7+q7/),1)

      call suba001((/(/q1/)+(/q1/)-(/q1/)/),1)
      call suba001((/(/q2/)+(/q2/)-(/q2/)/),1)
      call suba001((/(/q3/)+(/q3/)-(/q3/)/),1)
      call suba001((/(/q4/)+(/q4/)-(/q4/)/),1)
      call suba001((/(/q5/)+(/q5/)-(/q5/)/),1)
      call suba001((/(/q6/)+(/q6/)-(/q6/)/),1)
      call suba001((/(/q7/)+(/q7/)-(/q7/)/),1)

      call suba001((/(/(/(/(/(/(/(/(/(/q1/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/q2/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/q3/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/q4/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/q5/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/q6/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/q7/)/)/)/)/)/)/)/)/)/),1)

      call suba001((/(/q1/),(/q1/)/),2)
      call suba001((/(/q2/),(/q2/)/),2)
      call suba001((/(/q3/),(/q3/)/),2)
      call suba001((/(/q4/),(/q4/)/),2)
      call suba001((/(/q5/),(/q5/)/),2)
      call suba001((/(/q6/),(/q6/)/),2)
      call suba001((/(/q7/),(/q7/)/),2)

      call suba001((/(/(/(/(/q1/)/)/)/),q/),2)
      call suba001((/(/(/(/(/q2/)/)/)/),q/),2)
      call suba001((/(/(/(/(/q3/)/)/)/),q/),2)
      call suba001((/(/(/(/(/q4/)/)/)/),q/),2)
      call suba001((/(/(/(/(/q5/)/)/)/),q/),2)
      call suba001((/(/(/(/(/q6/)/)/)/),q/),2)
      call suba001((/(/(/(/(/q7/)/)/)/),q/),2)

      call suba001((/(/(/(/(/+q1/)/)/)/),q/),2)
      call suba001((/(/(/(/(/+q2/)/)/)/),q/),2)
      call suba001((/(/(/(/(/+q3/)/)/)/),q/),2)
      call suba001((/(/(/(/(/+q4/)/)/)/),q/),2)
      call suba001((/(/(/(/(/+q5/)/)/)/),q/),2)
      call suba001((/(/(/(/(/+q6/)/)/)/),q/),2)
      call suba001((/(/(/(/(/+q7/)/)/)/),q/),2)

      call suba001((/(/(/(/(/q1/)/)/)/),+q/),2)
      call suba001((/(/(/(/(/q2/)/)/)/),+q/),2)
      call suba001((/(/(/(/(/q3/)/)/)/),+q/),2)
      call suba001((/(/(/(/(/q4/)/)/)/),+q/),2)
      call suba001((/(/(/(/(/q5/)/)/)/),+q/),2)
      call suba001((/(/(/(/(/q6/)/)/)/),+q/),2)
      call suba001((/(/(/(/(/q7/)/)/)/),+q/),2)

      call suba001((/(/q1/),(/q2/),(/q3/),(/q4/),
     1(/q5/),(/q6/),(/q7/),q/),8)

      end subroutine aaaa
      subroutine suba001(x,y)
      real*16 x(:),z
      integer*4 y
      z=1
         do i=1,y
          if(x(i).ne.z) print *,'fail'
         enddo
      end subroutine suba001
      end

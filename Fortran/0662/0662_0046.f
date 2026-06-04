      call aaaa
      print *,'pass'
      contains
      subroutine aaaa
      complex*32 qc,qc1(1),qc2(1,1),qc3(1,1,1),qc4(1,1,1,1),
     1qc5(1,1,1,1,1),qc6(1,1,1,1,1,1),qc7(1,1,1,1,1,1,1)
      qc=1
      qc1=1
      qc2=1
      qc3=1
      qc4=1
      qc5=1
      qc6=1
      qc7=1
      call suba001((/qc1/),1)
      call suba001((/qc2/),1)
      call suba001((/qc3/),1)
      call suba001((/qc4/),1)
      call suba001((/qc5/),1)
      call suba001((/qc6/),1)
      call suba001((/qc7/),1)

      call suba001((/+qc1/),1)
      call suba001((/+qc2/),1)
      call suba001((/+qc3/),1)
      call suba001((/+qc4/),1)
      call suba001((/+qc5/),1)
      call suba001((/+qc6/),1)
      call suba001((/+qc7/),1)

      call suba001((/(/+qc1/)/),1)
      call suba001((/(/+qc2/)/),1)
      call suba001((/(/+qc3/)/),1)
      call suba001((/(/+qc4/)/),1)
      call suba001((/(/+qc5/)/),1)
      call suba001((/(/+qc6/)/),1)
      call suba001((/(/+qc7/)/),1)

      call suba001((/+(/+qc1/)/),1)
      call suba001((/+(/+qc2/)/),1)
      call suba001((/+(/+qc3/)/),1)
      call suba001((/+(/+qc4/)/),1)
      call suba001((/+(/+qc5/)/),1)
      call suba001((/+(/+qc6/)/),1)
      call suba001((/+(/+qc7/)/),1)
      call suba001((/-(/-qc1/)/),1)
      call suba001((/-(/-qc2/)/),1)
      call suba001((/-(/-qc3/)/),1)
      call suba001((/-(/-qc4/)/),1)
      call suba001((/-(/-qc5/)/),1)
      call suba001((/-(/-qc6/)/),1)
      call suba001((/-(/-qc7/)/),1)

      call suba001((/qc1+qc1-qc1/),1)
      call suba001((/qc2+qc2-qc2/),1)
      call suba001((/qc3+qc3-qc3/),1)
      call suba001((/qc4+qc4-qc4/),1)
      call suba001((/qc5+qc5-qc5/),1)
      call suba001((/qc6+qc6-qc6/),1)
      call suba001((/qc7+qc7-qc7/),1)

      call suba001((/(/qc1/)**(/qc1/)/),1)
      call suba001((/(/qc2/)**(/qc2/)/),1)
      call suba001((/(/qc3/)**(/qc3/)/),1)
      call suba001((/(/qc4/)**(/qc4/)/),1)
      call suba001((/(/qc5/)**(/qc5/)/),1)
      call suba001((/(/qc6/)**(/qc6/)/),1)
      call suba001((/(/qc7/)**(/qc7/)/),1)

      call suba001((/qc1**qc1-qc1+qc1/),1)
      call suba001((/qc2**qc2-qc2+qc2/),1)
      call suba001((/qc3**qc3-qc3+qc3/),1)
      call suba001((/qc4**qc4-qc4+qc4/),1)
      call suba001((/qc5**qc5-qc5+qc5/),1)
      call suba001((/qc6**qc6-qc6+qc6/),1)
      call suba001((/qc7**qc7-qc7+qc7/),1)

      call suba001((/(/qc1/)+(/qc1/)-(/qc1/)/),1)
      call suba001((/(/qc2/)+(/qc2/)-(/qc2/)/),1)
      call suba001((/(/qc3/)+(/qc3/)-(/qc3/)/),1)
      call suba001((/(/qc4/)+(/qc4/)-(/qc4/)/),1)
      call suba001((/(/qc5/)+(/qc5/)-(/qc5/)/),1)
      call suba001((/(/qc6/)+(/qc6/)-(/qc6/)/),1)
      call suba001((/(/qc7/)+(/qc7/)-(/qc7/)/),1)

      call suba001((/(/(/(/(/(/(/(/(/(/qc1/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/qc2/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/qc3/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/qc4/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/qc5/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/qc6/)/)/)/)/)/)/)/)/)/),1)
      call suba001((/(/(/(/(/(/(/(/(/(/qc7/)/)/)/)/)/)/)/)/)/),1)

      call suba001((/(/qc1/),(/qc1/)/),2)
      call suba001((/(/qc2/),(/qc2/)/),2)
      call suba001((/(/qc3/),(/qc3/)/),2)
      call suba001((/(/qc4/),(/qc4/)/),2)
      call suba001((/(/qc5/),(/qc5/)/),2)
      call suba001((/(/qc6/),(/qc6/)/),2)
      call suba001((/(/qc7/),(/qc7/)/),2)

      call suba001((/(/(/(/(/qc1/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/qc2/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/qc3/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/qc4/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/qc5/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/qc6/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/qc7/)/)/)/),qc/),2)

      call suba001((/(/(/(/(/+qc1/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/+qc2/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/+qc3/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/+qc4/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/+qc5/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/+qc6/)/)/)/),qc/),2)
      call suba001((/(/(/(/(/+qc7/)/)/)/),qc/),2)

      call suba001((/(/(/(/(/qc1/)/)/)/),+qc/),2)
      call suba001((/(/(/(/(/qc2/)/)/)/),+qc/),2)
      call suba001((/(/(/(/(/qc3/)/)/)/),+qc/),2)
      call suba001((/(/(/(/(/qc4/)/)/)/),+qc/),2)
      call suba001((/(/(/(/(/qc5/)/)/)/),+qc/),2)
      call suba001((/(/(/(/(/qc6/)/)/)/),+qc/),2)
      call suba001((/(/(/(/(/qc7/)/)/)/),+qc/),2)

      call suba001((/(/qc1/),(/qc2/),(/qc3/),(/qc4/),
     1(/qc5/),(/qc6/),(/qc7/),qc/),8)

      end subroutine aaaa
      subroutine suba001(x,y)
      complex*32 x(:),z
      integer*4 y
      z=1
         do i=1,y
          if(x(i).ne.z) print *,'fail'
         enddo
      end subroutine suba001
      end

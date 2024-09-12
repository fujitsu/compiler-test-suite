      SUBROUTINE DF002(RDA,RDA2)
      REAL  RDA(8),  RDA2(8)
      do i=1,8
         RDA(i) = RDA2(i)*2
      enddo
      write(6,*) RDA
      END

      real rc(10)/10*0/,rf(30)/30*1/
      write(6,*) 'bb'
      CALL DF002(RC(1),RF(2))
      END

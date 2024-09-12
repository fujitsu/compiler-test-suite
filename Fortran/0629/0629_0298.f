      COMMON /bl/aa
      REAL*4 aa(16),bb(16)/16*1/,nn

      nn=1.
      DO I=1,16
         nn=nn+aa(i)
      enddo
      write(6,*) nn

      END

      BLOCK DATA
      COMMON /bl/aa
      REAL*4 aa(16)
      DATA aa/16*1/
      END

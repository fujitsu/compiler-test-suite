       COMMON jg,ikp
       INTEGER ghw

       jg=98+16
       iksK=0
       ikp=0
       ksp=ghw(28)
       write(1,*) jg,ikp
       IF(IOR(jg,16).EQ.16 .AND. ikp.EQ.0 ) iksK=1
       write(1,*) iksK
       call s
       print *,'pass'
       END

       INTEGER FUNCTION ghw(ITEM)
          ghw=0
       END

       subroutine s
       rewind 1
       read(1,*) i,j
       if (i/=114)print *,101,i
       if (j/=0)print *,102,j
       read(1,*) i
       if (i/=0)print *,103,i
       end

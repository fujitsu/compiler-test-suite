      data ic/1/,id/1/
      n = 4

      DO JJ=1,1
      CALL SUB(n,iC,iD)
      ENDDO
      if (ic .eq. 11 .and. id.eq. 11) then
         write(6,*) '## OK ## '
      else
         write(6,*) '## NG ## '
         WRITE(6,*) iC
         WRITE(6,*) iD
      endif
      STOP
      END

      SUBROUTINE SUB(N,ic,id)

      DO K=1,n
      iC=iC+k
      iD=id+k
      enddo

      RETURN
      END


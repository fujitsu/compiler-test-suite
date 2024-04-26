      parameter (lda=260*1024,n=1024)
      real*8 a(lda*n)
      write(6,*) 'PASS 1 ',lda*n
      a(lda*n)=0.0d0
      write(6,*) 'PASS 2'
      call sub(a)
      END
C
      subroutine sub(a)
      end

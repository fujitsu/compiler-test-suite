      program main
      common /com/a(128),i,j,k
      integer*1 a
      integer*4 i
      integer*2 j
      integer*1 k
      integer*1 b,c,d
      print *,"*** begin ***"    
      call sub()
      b=a(i+10)
      c=a(j+11)
      d=a(k+12)       
      call chk(b,c,d)
      print *,"*** end *****"
      end
      subroutine sub()
      common /com/a(128),i,j,k
      integer*1 a
      integer*4 i
      integer*2 j
      integer*1 k
      i=10 
      j=10
      k=10   
      a(20)=125
      a(21)=126
      a(22)=127
      end 
      subroutine chk(b,c,d)
      integer*1 b,c,d
      if(b.eq.125.and.c.eq.126.and.d.eq.127) then
        print *,"*** ok ***  ",b,c,d
      else
        print *,"*** ng ***  ",b,c,d
      endif
      end  



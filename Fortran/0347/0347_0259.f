      real*4 a(50),b(50),c(50)
      real*4 wa(50),wb(50),wc(50)
      integer*4 l(50)
      data  a,b,c/150*1./,nn/47/
      do 5 i=1,50
        l(i)=51-i
 5    continue
      do 10 i=2,nn
        a(i)=b(i)+c(i)
        call  sub(a(nn))
 10   continue
      do 20 i=2,nn
        ix=l(i)
        b(1)=a(i)+c(i+1)
        call  sub(b(ix))
 20   continue
      nx=1
      do 30 i=2,nn
        a(1)=b(i)+c(i)
        call  sub(a(nx))
        nx=nx+1
 30   continue
      do 40 j=2,nn
       do 40 i=2,nn
         c(j)=a(i)+b(i)
         call  sub(a(i))
         b(i-1)=a(i)
 40   continue
      read(5,*) wa
      read(5,*) wb
      read(5,*) wc
      do i=1,50
	if( abs((a(i)-wa(i))/a(i)) .gt. 0.1e-5 ) stop ' NG 1 '
	if( abs((b(i)-wb(i))/b(i)) .gt. 0.1e-5 ) stop ' NG 2 '
	if( abs((c(i)-wc(i))/c(i)) .gt. 0.1e-5 ) stop ' NG 3 '
      end do
      print *,' PASS '
      stop
      end
      subroutine  sub(x)
      x=x+sqrt(x)
      return
      end

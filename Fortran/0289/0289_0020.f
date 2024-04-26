      program main
      real*8 a(2,5)/10*5d0/
      character*2 okng
      a(2,5)=2d0
      print *,'*** item= 1 '//okng(a,5,2)//' *** '
      print *,'*** item= 2 '//okng(a(1,2),2,4)//' ***'
      i=1
      j=2
      print *,'*** item= 3 '//okng(a(i,j),2,4)//' ***'
      n=2
      m=4
      print *,'*** item= 4 '//okng(a(i,j),n,m)//' ***'
      print *,'*** item= 5 '//okng(a(1,2),n,m)//' ***'
      i=i-1
      j=j-2
      print *,'*** item= 6 '//okng(a(i+1,j+2),2,4)//' ***'
      call sub1(a,2,5)
      call sub2(a,1,i+2,1,j+5)
      do 10 j=1,5
       do 10 i=1,2
        if (a(i,j).ne.i*(2-1+1)+j) then
         print *,'*** item=13 ng ***',a
         go to 14
         end if
   10   continue
      print *,'*** item=13 ok ***'
   14 i=1
      call sub2(a(i,i),i,2,i,5)
      do 20 j=1,5
       do 20 i=1,2
        if (a(i,j).ne.i*(2-1+1)+j) then
         print *,'*** item=14 ng ***',a
         stop
         end if
   20   continue
      print *,'*** item=14 ok ***'
      end
      function okng(x,n,m)
      real*8 x(n,m)
      character*(*) okng
      if (x(n,m).eq.2d0) then
       okng='ok'
      else
       okng='ng'
       end if
      return
      end
      subroutine sub1(a,n,m)
      real*8 a(n,m)
      character*2 okng
      print *,'*** item= 7 '//okng(a,m,n)//' *** '
      print *,'*** item= 8 '//okng(a(1,2),n,m-1)//' ***'
      i=1
      j=2
      print *,'*** item= 9 '//okng(a(i,j),n,m-1)//' ***'
      print *,'*** item=10 '//okng(a(i,j),n,m-1)//' ***'
      print *,'*** item=11 '//okng(a(1,2),n,m-1)//' ***'
      i=i-1
      j=j-2
      print *,'*** item=12 '//okng(a(i+1,j+2),n,m-1)//' ***'
      return
      end
      subroutine sub2(a,m1,m2,n1,n2)
      real*8 a(m1:m2,n1:n2)
      do 10 j=n1,n2
       do 10 i=m1,m2
        a(i,j)=i*(m2-m1+1)+j
   10   continue
      return
      end

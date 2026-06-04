      subroutine x1(c,a,b,i,a4,c1,c2,c3,c4,c5)
      complex c(i,i,i)
      complex,dimension(i*i*i)::c1,c2,c3,c4,c5
      character*(*) a(i,i,i),b(i,i,i),a4
      write(1,fmt=a//b)
      rewind 1
      if (len(a4).ne.10)call err(1002)
      read (1,'(a)') a4
      write(2,*) c+c ,c-c,c*c,c/c,c**c
      rewind 2
      read (2,*) c1,c2,c3,c4,c5
      end
      call s1
      print *,'pass'
      end
      subroutine s1
      parameter (i=2)
      complex c(i,i,i)
      character*(i-1) a(i,i,i),a4*10,b(i,i,i)  
      complex,dimension(i*i*i)::c1,c2,c3,c4,c5
      c=(-1,-1)
      a(1,1,1)='(' 
      b(1,1,1)='8' 
      a(2,1,1)='h' 
      b(2,1,1)='a' 
      a(1,2,1)='b' 
      b(1,2,1)='c' 
      a(2,2,1)='d' 
      b(2,2,1)='e' 
      a(1,1,2)='f' 
      b(1,1,2)='g' 
      a(2,1,2)='h' 
      b(2,1,2)='2' 
      a(1,2,2)='h' 
      b(1,2,2)='i' 
      a(2,2,2)='j' 
      b(2,2,2)=')' 
      call       x1(c,a,b,i,a4,c1,c2,c3,c4,c5)
      jj=1
      do 1 j1=i,1,-1
      do 1 j2=i,1,-1
      do 1 j3=i,1,-1
         if (c1(jj).ne.c(j1,j2,j3)+c(j1,j2,j3))call err(2001)
         if (c2(jj).ne.c(j1,j2,j3)-c(j1,j2,j3))call err(2002)
         if (c3(jj).ne.c(j1,j2,j3)*c(j1,j2,j3))call err(2003)
         if (c4(jj).ne.c(j1,j2,j3)/c(j1,j2,j3))call err(2004)
         if (c5(jj).ne.c(j1,j2,j3)**c(j1,j2,j3))call err(2005)
         jj=jj+1
 1    continue
      if (a4.ne.'abcdefghij')call err(1001)
      end
      subroutine err(i)
      print *,'error code :',i
      print *,'fail'
      end

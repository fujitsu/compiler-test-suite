      program main
       common /idle/ idle1(2),idle2(2),idle3(2)
       real*8 a(10,10),b(10,10)

       pointer (Ba,a),(Ab,b)
       real*8,allocatable :: aa(:,:),bb(:,:)
       allocate (aa(10,10),bb(10,10))
       Ba = loc(aa)
       Ab = loc(bb)

       call sub1( b,10,10)
       call sub2( b,10,10)
       call sub3(Ab,10,10)
       call clockx(it1,0,1)
       do 10 j=1,10
        do 10 i=1,10
   10   a(i,j)=float(i)+float(j)*1.d1
       call clockx(it2,0,1)
       idle1(2)=it2-it1
       call clockx(it1,0,1)
       j=1
       do 30 while(j.le.10)
        i=1
        do 20 while(i.le.10)
         a(i,j)=float(i)+float(j)*1.d1
   20    i=i+1
   30   j=j+1
       call clockx(it2,0,1)
       idle2(2)=it2-it1
       call clockx(it1,0,1)
       do 50 j=1,10
        do 40 i=1,9
         a(i,j)=float(i)+float(j)*1.d1
   40    continue
   50   continue
       call clockx(it2,0,1)
       idle3(2)=it2-it1
       do 100 j=1,10
        do 100 i=1,10
         if (a(i,j).ne.b(i,j)) then
          print *,'*** ng ***',a(i,j),b(i,j)
          print *,'*** do count =',idle1(2)-idle1(1)
          print *,'*** do while =',idle2(2)-idle2(1)
          print *,'*** do until =',idle3(2)-idle3(1)
          stop
          end if
  100    continue
       print *,'*** ok ***'
       print *,'*** do count =',idle1(2)-idle1(1)
       print *,'*** do while =',idle2(2)-idle2(1)
       print *,'*** do until =',idle3(2)-idle3(1)
       stop
       end
      subroutine sub1(b,i,j)
       common /idle/ idle1(2),idle2(2),idle3(2)
       real*8 b(i,j)
       call clockx(it1,0,1)
       do 10 n=1,j
        do 10 m=1,i
   10   continue
       call clockx(it2,0,1)
       idle1(1)=it2-it1
       do 20 n=1,j
        do 20 m=1,i
   20   b(m,n)=float(m)+float(n)*1.d1
       return
       end
      subroutine sub2(b,i,j)
       common /idle/ idle1(2),idle2(2),idle3(2)
       real*8 b(i,j)
       call clockx(it1,0,1)
       n=1
       do 20 while(n.le.j)
        m=1
        do 10 while(m.le.i)
   10    m=m+1
   20   n=n+1
       call clockx(it2,0,1)
       idle2(1)=it2-it1
       n=1
       do 40 while(n.le.j)
        m=1
        do 30 while(m.le.i)
         b(m,n)=float(m)+float(n)*1.d1
   30    m=m+1
   40   n=n+1
       return
       end
      subroutine sub3(Ab,i,j)
       common /idle/ idle1(2),idle2(2),idle3(2)
       real*8 b(i,j)
       pointer (Ab,b) 
       call clockx(it1,0,1)
       do 20 n=1,j-1
        do 10 m=1,i-1
   10    continue
   20   continue
       call clockx(it2,0,1)
       idle3(1)=it2-it1
       do 40 n=1,j-1
        do 30 m=1,i-1
         b(m,n)=float(m)+float(n)*1.d1
   30    continue
   40   continue
       return
       end
       subroutine clockx(i,j,k)
       i=1
       end

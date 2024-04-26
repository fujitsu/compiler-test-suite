      program main
      real * 4 a(20),b(20),value
      real*4,dimension(20)::w_a
      real,allocatable,dimension(:)::w_b
      real,allocatable,dimension(:)::w_value
      pointer (pa ,a),(pb ,b),(p_value ,value)
      integer * 4 n,m,nn,n1,n2,cnt
      data m/10/,n2/-10/
      allocate (w_b(20))
      pb = loc (w_b(1))
      do i=1,20
         w_a(i) = real(i)
         b(i)   = real(i)
      enddo
      pa = loc (w_a(1))
      n = 1
      nn = 1
      do 10 i=n,m,nn
        a(i) = a(i+n) + a(i+m) + a(i+nn)
        b(i) = b(i+i) + b(i+m)
 10   continue
      m = -1
      n1 = -1
      do 20 j=n1,n2,m
        a(j+11) = a(j+n1+12)
        b(j+11) = b(j+n2+21)
 20   continue
      cnt=0
      allocate (w_value(1))
      p_value = loc(w_value)
      value=15.0
      do 30 k=1,10
      if (a(k).eq.value) then
      cnt=cnt+1
      endif
      if (b(k).eq.value-2.0) then
      cnt=cnt+1
      endif
      value=value+3.0
 30   continue
      value=11.0
      do 40 k=11,20
      if (a(k).eq.value) then
      cnt=cnt+1
      endif
      if (b(k).eq.value) then
      cnt=cnt+1
      endif
      value=value+1.0
 40   continue
      if (cnt.eq.40) then
      write(6,*) '- ok -'
      else
      write(6,*) '- ng -'
      write(6,*) 'a=' ,a ,'b='  , b,'cnt=',cnt
      endif
      deallocate (w_value ,w_b)
      stop
      end

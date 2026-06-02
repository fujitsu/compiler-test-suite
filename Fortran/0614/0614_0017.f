      program main
      character::m*10/'aabbccddee'/,c*1
      character*1 d_c(10),wk, z_c(10),w_c(10)
      character*2 s_c(5),xx(5)
      character*1 a_c(10)/'a','a','b','b','c','c','d','d','e','e'/
      character*1 res(10,10)/10*'a',20*'e',20*'d',20*'c',20*'b',10*'a'/
      integer*2   err/0/,n/1/
      character*1,allocatable::alc_a(:,:)

      pointer (p,c),(pp,xx)
      p  = loc (m)
      pp = loc (s_c(1))
      do i=1,5
         d_c(i) = c
         p = p + 2
      end do

      d_c(6:10) = a_c(1:10:2)
      do i=1,9
         wk = d_c(10)
         d_c(i+1:10:1) = d_c(i:9)
         d_c(i) = wk
      end do
      xx = d_c(5:1:-1)//d_c(6:10)
      z_c(1:5:1) = xx(1:5)(1:1)
      z_c(6:10:1)= xx(5:1:-1)(2:2)

      do i=1,5
         w_c(n)   = z_c(i)
         w_c(n+1) = z_c(i+5)
         n = n + 2
      end do
      p=p-10
      do i=1,10
         if ( c .ne. w_c(i) ) err = 1
         p = p + 1
      end do
      allocate (alc_a(1:n-1,10))
      alc_a = ''
      alc_a(1,:)           = 'a'
      alc_a(3,1:n-1:1    ) = 'b'
      in = 0 - cos(0.0)
      alc_a(5,10:1:in)     = 'c'
      alc_a(8+in ,0-in:10) = 'd'
      alc_a(9,:)           = 'e'
      call sub(alc_a, 10 ,10)
      do i=1,10
      end do

      do l=1,10
         do i=1,10
            if ( res(i,l) .ne. alc_a(i,l) ) err=1
         end do
      end do

      if ( err .eq. 0 )then
         write(6,*)'*** ok ***'
      else
         write(6,*)'*** ng ***'
         write(6,*)'true value(m  ): ',m
         write(6,*)'calc value(w_c): ',w_c
         write(6,*)'true value(res  ): ',res
         write(6,*)'calc value(alc_a): ',alc_a
      endif
      deallocate (alc_a)
      stop
      end

      subroutine sub(zz ,x,y)
      character*1 zz(x,y),pc(10),wk(10)
      integer  x,y
      pointer (p,pc)

      zz(2:10:2,:) = zz(1:9:2,:)

      do i=1,10
         p = loc(zz(1,i))
         wk(1:i) = pc(1:i)
         pc(1:10-i:1) = pc(i+1:10)
         pc(10-i+1:10) = wk(1:i)
      end do

      call sub2(zz,x,y)

      return
      end

      subroutine sub2(zzz,x,y)
      character*1 zzz(x,y),pc(x,y),wk(10,10)
      integer x,y,lc/1/
      pointer (p,pc)      

      p = loc(zzz)
      do i=10,1,-1
        wk(1:10,lc) = pc(i,1:10)
        lc = lc + 1
      end do
      zzz = wk

      do i=10,1,-1
         wk(1,1:i-1:1)    = zzz(i ,1:i-1:1)
         zzz(i ,1:11-i:1)   = zzz(i ,i:10:1)
         zzz(i ,12-i:10:1) = wk(1,1:i-1:1)
      end do

      return
      end


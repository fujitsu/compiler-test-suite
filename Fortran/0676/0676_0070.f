      program main
      integer fun1,fun2,fun3,fun4,fun5
      integer i
      real x
      i=0

      x=10.0
      i=i+fun1(x)
      i=i+fun2(x)
      i=i+fun3(x)
      i=i+fun4(x)
      i=i+fun5(x)
      if ( i .eq. 5 ) then
         print *,'OK'
      else
         print *,'NG'
         print *,'i=',i
      endif
      end

      real function var_initf()
      var_initf = 10.0
      return
      end

      real function fvar(p)
      real p
      if ( p .ge. 0.0 ) then
         fvar = 100.0
      else
         fvar = 10.0
      endif
      return
      end

      integer function ivar(p)
      integer p
      if ( p .ge. 0.0 ) then
         ivar = 100.0
      else
         ivar = 10.0
      endif
      return
      end

      integer function fun1(p)
      real p
      real a(10),b,t
      integer res
      t=0
      b=var_initf()
      do i=1,10
         a(i)=(b/(b*b))*100.0
         b=b+1.0
      enddo
      do i=1,10
         a(i)=a(i)+(p/(p*p))*100.0
         p=p+1.0
      enddo
      do i=1,10
         a(i)=a(i)+(fvar(a(i))/(fvar(a(i))*fvar(a(i))))*100.0
      enddo
      do i=1,10
         t=t+a(i)
      enddo
      if ( t .ge. 153.0 .and. t .le. 154.0 ) then
         print *,'OK'
         res = 1
      else
         print *,'NG'
         print *,'t=',t
         res = 0
      endif
      fun1 = res
      return 
      end

      integer function fun2(p)
      real p
      real a(10),b,t,c,d
      integer res
      t=0
      b=var_initf()
      do i=1,10
         c=b*b
         d=b/c
         a(i)=d*100.0
         b=b+1.0
      enddo
      do i=1,10
         c=p*p
         d=p/c
         a(i)=a(i)+d*100.0
         p=p+1.0
      enddo
      do i=1,10
         c=fvar(a(i))
         d=fvar(a(i))/c
         a(i)=a(i)+d*100.0
      enddo
      do i=1,10
         t=t+a(i)
      enddo
      if ( t .ge. 1113.0 .and. t .le. 1114.0 ) then
         print *,'OK'
         res = 1
      else
         print *,'NG'
         print *,'t=',t
         res = 0
      endif
      fun2 = res
      return 
      end

      integer function fun3(q)
      real q
      integer p
      integer a(10),b,t,res
      t=0
      p=real(q)
      b=var_initf(b)
      do i=1,10
         a(i)=100*(b/(b*b))
         b=b+1.0
      enddo
      do i=1,10
         a(i)=a(i)+100*(p/(p*p))
         p=p+1
      enddo
      do i=1,10
         a(i)=a(i)+100*(ivar(a(i))/(ivar(a(i))*ivar(a(i))))
      enddo
      do i=1,10
         t=t+a(i)
      enddo
      if ( t .ge. -1.0 .and. t .le. 1 ) then
         print *,'OK'
         res = 1
      else
         print *,'NG'
         print *,'t=',t
         res = 0
      endif
      fun3 = res
      return 
      end

      integer function fun4(p)
      real p
      real a(10),b,t,c,d
      integer res
      t=0
      b=var_initf()
      do i=1,10
         c=b*b
         d=b/c
         a(i)=d*100.0+(b*b)
         b=b+1.0
      enddo
      do i=1,10
         c=p*p
         d=p/c
         a(i)=a(i)+d*100.0+(p*P)
         p=p+1.0
      enddo
      do i=1,10
         c=fvar(a(i))
         d=fvar(a(i))/c
         a(i)=a(i)+d*100.0+(fvar(a(i))*fvar(a(i)))
      enddo
      do i=1,10
         t=t+a(i)
      enddo
      if ( t .ge. 115271.0 .and. t .le. 115272.0 ) then
         print *,'OK'
         res = 1
      else
         print *,'NG'
         print *,'t=',t
         res = 0
      endif
      fun4=res
      return 
      end

      integer function fun5(p)
      real p
      real a(10),b,t
      integer res
      t=0
      b=var_initf()
      c=fvar(b)
      do i=1,10
         a(i)=(b/(b*c))*100.0
         b=b+1.0
      enddo
      do i=1,10
         a(i)=a(i)+(p/(p*b))*100.0
         p=p+1.0
      enddo
      do i=1,10
         a(i)=a(i)+(fvar(a(i))/(fvar(a(i))*p))*100.0
      enddo
      do i=1,10
         t=t+a(i)
      enddo
      if ( t .ge. 80.0 .and. t .le. 81.0 ) then
         print *,'OK'
         res = 1
      else
         print *,'NG'
         print *,'t=',t
         res = 0
      endif
      fun5=res
      return 
      end


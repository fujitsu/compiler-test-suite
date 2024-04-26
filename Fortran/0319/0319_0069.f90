      subroutine para(b,c,n)
      real,dimension(10)::a,b,c
      data a/10*1.0/
      integer,dimension(10)::iv
      volatile irv
      equivalence ( iv(5) ,irv )
      iv(5)=1
      do i=1,n
        iv(i)=1
         a(i) = a(i)+my_sin(b(i))
      end do
      call check(a,c,n)
      a=1.
      do i=1,n
         a(i) = a(i)+my_sin_p(b(i))
      end do
      call check(a,c,n)
      contains
        recursive real function my_sin(x)
        intent (in)::x
        real x
        my_sin = sin(x)*(irv*1.)
        end function
        recursive real function my_sin_p(x)
        intent (in)::x
        real x
        my_sin_p = sin(x)
        end function
      end 
      subroutine check(ar,c_ar,n)
      real,dimension(10)::ar,c_ar
      do i=1,n
         if (abs(ar(i)-(sin(i*1.)+1.)) > 1.0e-7 ) then
            print *,'ng1  ',i,':',abs(ar(i)-(sin(i*1.)+1.))
            stop
         endif
         if (abs(ar(i)-(c_ar(i)+1.)) > 1.0e-7 ) then
            print *,'ng2  ',i,':',abs(ar(i)-(c_ar(i)+1.))
            stop
         endif
      enddo
      print *,'test OK'
      return 
      end
      subroutine set(ai,ara,n)
      real,dimension(10)::ara,ai
      do i=1,n
         ara(i)=sin(i*1.)
          ai(i)=i*1.
      enddo
      return
      end
      real,dimension(10)::area_sub,area
      call  set(area,area_sub,10)
      call para(area,area_sub,10)
      stop
      end



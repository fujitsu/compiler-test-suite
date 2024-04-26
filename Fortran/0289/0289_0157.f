
      program main

      write(6,*) '###### test-start ######'
      call test1
      call test2
      call test3
      write(6,*) '###### test-end   ######'

      stop
      end


      subroutine test1
      real,dimension(5)::a,right_result
      real,dimension(5)::w_a
      pointer(pa,a)
      data w_a/1.0,2.0,3.0,4.0,5.0/
      logical no_good/.false./

      pa = loc(w_a(1))

      a=cos(a)+3.14

      do i=1,5
         right_result(i) = cos(real(i))+3.14
      if(abs((a(i)-right_result(i))/a(i)).GT.0.1E-5) no_good = .true.
      enddo
      if (no_good) then
         write (6,*) '?????? test1 ng ??????'
         write (6,*) '< actual result >   ',a
         write (6,*) '< right  result >   ',right_result
         write (6,*) '?????? test1 ng ??????'
      else
         write (6,*) '****** test1 ok ******'
      endif
      return
      end


      subroutine test2
      real,dimension(5)::a,right_result
      real,dimension(5)::w_right_result
      pointer(p ,w_right_result)
      real ext_fnc
      logical no_good/.false./

      a=99.
      a=ext_fnc(a)

      p = loc(w_right_result(1))

      right_result = 99.*99.+99.*9.+99.+99.
      do i=1,5
      if(abs((a(i)-right_result(i))/a(i)) .GT. 0.1E-5) no_good = .true.
      enddo
      if (no_good) then
         write (6,*) '?????? test2 ng ??????'
         write (6,*) '< actual result >   ',a
         write (6,*) '< right  result >   ',right_result
         write (6,*) '?????? test2 ng ??????'
      else
         write (6,*) '****** test2 ok ******'
      endif
      return
      end

      real function ext_fnc(d)
      real,dimension(5)::d

      ext_fnc = d(1)*d(2)+d(3)*9.+d(4)+d(5)
      end function ext_fnc


      subroutine test3
      real,dimension(5)::a,b,right_result
      real,dimension(5)::w_a
      data w_a         /-1.2,0.5,3.1,1.0,-1.0/
      data right_result/-1.2,0.5,3.1,1.0,-1.0/
      real x
      real w_x
      logical no_good/.false./

      pointer (pa,a),(px,x)
      pa = loc(w_a(1))
      px = loc(w_x)
      x=gamma(3.0)
      if (x<0) goto 10

      b=3.0
      a=x**1.9*a

      do i=1,5
         right_result(i) = x**1.9*right_result(i)
      if (abs((a(i)-right_result(i))/a(i)).GT.0.1E-5) no_good = .true.
      enddo
      if (no_good) then
         write (6,*) '?????? test3 ng ??????'
         write (6,*) '< actual result >   ',a
         write (6,*) '< right  result >   ',right_result
         write (6,*) '?????? test3 ng ??????'
      else
         write (6,*) '****** test3 ok ******'
      endif
   10 return
      end

      program main
      integer er_count;
      common er_count
      er_count = 0;
      call test_int()
      call test_short()
      call test_char()
      if ( er_count .eq. 0 ) then
         write(6,*) "OK"
      else 
         write(6,*) "NG"
         write(6,*) "er_count = ",er_count
      endif
      end

      subroutine test_int() 
      common er_count
      integer x, er_count, sub_int
      integer ans(4)
      x=sub_int()
      ans(1) = and(x , (-1))
      ans(2) = and((-1), x)
      ans(3) = ior(x , 0)
      ans(4) = ior(0 , x)
      if ( x .ne. ans(1) .or. x .ne. ans(2) .or.
     1     x .ne. ans(3) .or. x .ne. ans(4) ) then
         er_count = 1;
      endif
      return
      end

      subroutine test_short()
      common er_count
      integer er_count
      integer*2 x, ans(4), sub_short
      x=sub_short()
      ans(1) = and(x , (-1))
      ans(2) = and((-1), x)
      ans(3) = ior(x , 0)
      ans(4) = ior(0 , x)
      if ( x .ne. ans(1) .or. x .ne. ans(2) .or.
     1     x .ne. ans(3) .or. x .ne. ans(4) ) then
         er_count = 1;
      endif
      return
      end

      subroutine test_char()
      common er_count
      integer*1 x, ans(4), sub_char
      x=sub_char()
      ans(1) = and(x , (-1))
      ans(2) = and((-1), x)
      ans(3) = ior(x , 0)
      ans(4) = ior(0 , x)
      if ( x .ne. ans(1) .or. x .ne. ans(2) .or.
     1     x .ne. ans(3) .or. x .ne. ans(4) ) then
         er_count = 1;
      endif
      return
      end

      integer function sub_int()
      sub_int=123
      return
      end

      integer*2 function sub_short()
      sub_short=123
      return
      end

      integer*1 function sub_char()
      sub_char=123
      return
      end


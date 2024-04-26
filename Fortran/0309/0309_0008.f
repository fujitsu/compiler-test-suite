      program MAIN
      integer*8 foo
      integer*8 bar
      integer*8 i
      i = 0
      if (foo(i) .eq. 1000 .and. bar(i) .eq. 500) then
	write (*,*) "OK"
      else 
	write (*,*) "NG"
      endif
      end
      function foo(x)
      integer*8 foo
      integer*8 x
      if (x .eq. 0) foo = 1000
      return
      end
      function bar(x)
      integer*8 bar
      integer*8 x
      if (x .eq. 0) bar = 500
      return
      end

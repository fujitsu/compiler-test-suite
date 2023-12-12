!
      integer*2 a1, a2
      real*4    b1, b2
      logical   ok

      ok = .true.

! TEST1
      a1 = 3267_2
      b1 = 3267.1E0
      a2 = b1
      b2 = a1

      if ((a2-b2) .ne. 0) then
	ok = .false.
        print *,"TEST1-NG =>",a2-b2
      endif

! TEST2
      a1 = -3267_2
      b1 = -3267.1E0
      a2 = b1
      b2 = a1

      if ((a2-b2) .ne. 0) then
	ok = .false.
        print *,"TEST1-NG =>",a2-b2
      endif

      if (ok) then
        print *,"OK"
      endif

      end

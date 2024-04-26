      program main
      integer(kind=4),parameter :: I4_MAX=2147483647_4
      integer(kind=4),parameter :: I4_MIN=-I4_MAX-1_4
      integer(kind=4),parameter :: I4_ZERO=0_4
      integer(kind=4),parameter :: I4_ONE=1_4
      integer(kind=4),parameter :: I4_MZERO=-I4_ZERO
      integer(kind=4),parameter :: I4_MONE=-I4_ONE

      integer(kind=8),parameter :: I8_MAX=9223372036854775807_8
      integer(kind=8),parameter :: I8_MIN=-I8_MAX-1_8
      integer(kind=8),parameter :: I8_ZERO=0_8
      integer(kind=8),parameter :: I8_ONE=1_8
      integer(kind=8),parameter :: I8_MZERO=-I8_ZERO
      integer(kind=8),parameter :: I8_MONE=-I8_ONE

      integer(kind=4)  i4a, i4b, i4c
      integer(kind=8)  i8a, i8b, i8c

      i4a = I4_MAX
      i4b = I4_ZERO
      i4c = i4a - i4b
      if (i4c .ne. I4_MAX) then
         print *, "NG : I4_MAX - I4_ZERO"
         goto 10
      endif

      i4a = I4_MAX
      i4b = I4_MZERO
      i4c = i4a - i4b
      if (i4c .ne. I4_MAX) then
         print *, "NG : I4_MAX - I4_MZERO"
         goto 10
      endif

      i4a = I4_MAX
      i4b = I4_ONE
      i4c = i4a - i4b
      if (i4c .ne. I4_MAX-1) then
         print *, "NG : I4_MAX - I4_ONE"
         goto 10
      endif

      i4a = I4_MIN
      i4b = I4_ZERO
      i4c = i4a - i4b
      if (i4c .ne. I4_MIN) then
         print *, "NG : I4_MIN - I4_ZERO"
         goto 10
      endif

      i4a = I4_MIN
      i4b = I4_MZERO
      i4c = i4a - i4b
      if (i4c .ne. I4_MIN) then
         print *, "NG : I4_MIN - I4_MZERO"
         goto 10
      endif

      i4a = I4_MIN
      i4b = I4_MONE
      i4c = i4a - i4b
      if (i4c .ne. -I4_MAX) then
         print *, "NG : I4_MIN - I4_MONE"
         goto 10
      endif

      i4a = I4_MAX + I4_MIN
      i4b = I4_MIN + I4_MAX
      i4c = i4a - i4b
      if (i4c .ne. I4_ZERO) then
         print *, "NG : SUB I4 - I4"
         goto 10
      endif

      i8a = I8_MAX
      i8b = I8_ZERO
      i8c = i8a - i8b
      if (i8c .ne. I8_MAX) then
         print *, "NG : I8_MAX - I8_ZERO"
         goto 10
      endif

      i8a = I8_MAX
      i8b = I8_MZERO
      i8c = i8a - i8b
      if (i8c .ne. I8_MAX) then
         print *, "NG : I8_MAX - I8_MZERO"
         goto 10
      endif

      i8a = I8_MAX
      i8b = I8_ONE
      i8c = i8a - i8b
      if (i8c .ne. I8_MAX-1) then
         print *, "NG : I8_MAX - I8_ONE"
         goto 10
      endif

      i8a = I8_MIN
      i8b = I8_ZERO
      i8c = i8a - i8b
      if (i8c .ne. I8_MIN) then
         print *, "NG : I8_MIN - I8_ZERO"
         goto 10
      endif

      i8a = I8_MIN
      i8b = I8_MZERO
      i8c = i8a - i8b
      if (i8c .ne. I8_MIN) then
         print *, "NG : I8_MIN - I8_MZERO"
         goto 10
      endif

      i8a = I8_MIN
      i8b = I8_MONE
      i8c = i8a - i8b
      if (i8c .ne. -I8_MAX) then
         print *, "NG : I8_MIN - I8_MONE"
         goto 10
      endif

      i8a = I8_MAX + I8_MIN
      i8b = I8_MIN + I8_MAX
      i8c = i8a - i8b
      if (i8c .ne. I8_ZERO) then
         print *, "NG : SUB I8 - I8"
         goto 10
      endif

      print *, "OK"
      stop

 10   print *, "NG"

      end program main

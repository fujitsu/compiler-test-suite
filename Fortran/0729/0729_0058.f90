      program test
      character *20 fname
      fname='nl.dat'
      call wr (fname)
      fname='nl.dat'
      call rd (fname)
      stop
      end

      SUBROUTINE iocheck( op, ios )
      implicit none
      character *20 op
      integer ios
      if ( ios .ne. 0 ) then
         write (96,*) op,': iostat = ',ios
      endif
      return
      end

      SUBROUTINE wr( fname )
      implicit none
      character *20 fname
      integer i, j, k
      double precision a, b, c
      character *8 sa, sb, sc
      integer ios
      character *20 op
      namelist /foo/ a, i, sa
      namelist /bar/ j, sb, b
      namelist /baz/ sc, c, k
      i=1
      j=2
      k=3
      a=1.0d0
      b=2.0d0
      c=3.0d0
      sa='foo'
      sb='bar'
      sc='baz'
      open (unit=2, file=fname, iostat=ios)
      op = 'open'
      call iocheck (op, ios)
      write (2,foo,iostat=ios)
      op = 'write-foo'
      call iocheck (op, ios)
      write (2,bar,iostat=ios)
      op = 'write-bar'
      call iocheck (op, ios)
      write (2,baz,iostat=ios)
      op = 'write-baz'
      call iocheck (op, ios)
      close (unit=2)
      end

      SUBROUTINE rd( fname )
      implicit none
      character *20 fname
      character *20 order
      integer i, j, k
      double precision a, b, c
      character *8 sa, sb, sc
      common /fbb/ a, b, c, i, j, k, sa, sb, sc
      integer ios
      character *20 op
      namelist /foo/ a, i, sa
      namelist /bar/ j, sb, b
      namelist /baz/ sc, c, k
      open (unit=2, file=fname, status='OLD', iostat=ios)
      op = 'open'
      call iocheck (op, ios)
      write (96,*) 'Pass 1'
      call id
      read (2,foo,iostat=ios)
      op = 'read-foo'
      call iocheck (op, ios)
      read (2,bar,iostat=ios)
      op = 'read-bar'
      call iocheck (op, ios)
      read (2,baz,iostat=ios)
      op = 'read-baz'
      call iocheck (op, ios)
      order='foo-bar-baz'
      call cd (order)
      write (96,*) 'Pass 2'
      call id
      rewind 2
      read (2,bar,iostat=ios)
      op = 'read-bar'
      call iocheck (op, ios)
      rewind 2
      read (2,foo,iostat=ios)
      op = 'read-foo'
      call iocheck (op, ios)
      rewind 2
      read (2,baz,iostat=ios)
      op = 'read-baz'
      call iocheck (op, ios)
      order='bar-foo-baz'
      call cd (order)
      close (unit=2,status='delete')
       rewind 96
      call chk
      end
      subroutine chk
      character*10 r
      read(96,'(a)') r;if (r/=' Pass 1')write(6,*) "NG"
      read(96,'(a)') r;if (r/=' Pass 2')write(6,*) "NG"
      print *,'pass'
      end

      SUBROUTINE id
      implicit none
      integer i, j, k
      double precision a, b, c
      character *8 sa, sb, sc
      common /fbb/ a, b, c, i, j, k, sa, sb, sc
      i=-1
      j=-1
      k=-1
      a=-1.0d0
      b=-1.0d0
      c=-1.0d0
      sa='XXX'
      sb='YYY'
      sc='ZZZ'
      return
      end

      SUBROUTINE cd(order)
      implicit none
      character *20 order
      integer i, j, k
      double precision a, b, c
      character *8 sa, sb, sc
      common /fbb/ a, b, c, i, j, k, sa, sb, sc
      if (i .ne. 1) then
         write (6,*) 'i mismatch: ',i
      endif
      if (j .ne. 2) then
         write (6,*) 'j mismatch: ',j
      endif
      if (k .ne. 3) then
         write (6,*) 'k mismatch: ',k
      endif
      if (a .ne. 1.0d0) then
         write (6,*) 'a mismatch: ',a
      endif
      if (b .ne. 2.0d0) then
         write (6,*) 'b mismatch: ',b
      endif
      if (c .ne. 3.0d0) then
         write (6,*) 'c mismatch: ',c
      endif
      if (sa .ne. 'foo') then
         write (6,*) 'sa mismatch: ',sa
      endif
      if (sb .ne. 'bar') then
         write (6,*) 'sb mismatch: ',sb
      endif
      if (sc .ne. 'baz') then
         write (6,*) 'sc mismatch: ',sc
      endif
      return
      end

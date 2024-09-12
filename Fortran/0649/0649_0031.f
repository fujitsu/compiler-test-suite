      type t1
        integer a(10)
      end type
      type (t1) :: st1
      integer a(10),b(10)

      ierr=1
      rewind 1
      write (1,'(10I2)') 1,2,3,4,5,6,7,8,9,10
      rewind 1
      read  (1,'(10I2)') (st1%a(i),i=1,10)
      do 10 ido=1,10
10       if (st1%a(ido).ne.ido) call err(ierr,ido)

      ierr=ierr+1
      rewind 1
      write (1,'(10I2)') 1,2,3,4,5,6,7,8,9,10
      rewind 1
      read  (1,'(10I2)') (a(i-1+st1%a(1)),i=1,10)
      do 20 ido=1,10
20       if (a(ido).ne.ido) call err(ierr,ido)

      ierr=ierr+1
      rewind 1
      write (1,'(10I2)') 2,3,4,5,6,7,8,9,10,11
      rewind 1
      read  (1,'(10I2)') st1%a(1),(st1%a(i),i=2,9),st1%a(i)
      do 30 ido=1,10
30       if (st1%a(ido).ne.ido+1) call err(ierr,ido)

      ierr=ierr+1
      rewind 1
      write (1,'(10I2)') 2,3,4,5,6,7,8,9,10,11
      rewind 1
      read  (1,'(10I2)') ((a(i),i=1,9),st1%a(1),j=1,1)
      do 40 ido=1,9
40       if (a(ido).ne.ido+1) call err(ierr,ido)
      if (st1%a(1).ne.ido+1) call err(ierr,ido)

      ierr=ierr+1
      rewind 1
      write (1,*) 2,3,4,5,6,7,8,9,10,11
      rewind 1
      read  (1,*) (st1%a,i=1,1 )
      do 50 ido=1,10
50       if (st1%a(ido).ne.ido+1) call err(ierr,ido)

      ierr=ierr+1
      rewind 1
      write (1,'(10I2)') 1,2,3,4,5,6,7,8,9,10
      rewind 1
      read  (1,'(10I2)') st1
      do 60 ido=1,10
60       if (st1%a(ido).ne.ido) call err(ierr,ido)

      print *,'pass'
      end

      subroutine err(i,j)
      print *, 'err - ',i,'   no - ',j
      end

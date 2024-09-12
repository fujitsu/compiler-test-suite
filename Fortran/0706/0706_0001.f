      call s1
      print *,'pass'
      end
      subroutine s1
      character*2      a(:)
      allocatable a
      integer b(2)
      b(1)=0
      if (b(1)==0)return
      read (1,advance='no',eor=10,fmt='(i4)') i
      read (1,advance='no',eor=20,fmt=a//a  ) i
      read (1,advance='no',eor=30,fmt='(i4)') b(if(a//a))
      read (1,advance='no',eor=30,fmt='(i4)',end=40) b(if(a//a))
      allocate (a(1:2))
      a(1)=' '
      return
  10  continue
  20  continue
  30  continue
  40  continue
      end
      function if(a)
      character*(*) a(*)
      if=1
      end

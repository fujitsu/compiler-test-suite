  module m1
    contains
      pure      function f1()
            entry    f2()
            entry    f3()
      f1=1
      end function
end
       subroutine sub(nn)
use m1
       integer(8)::i,nn
       real(8)::array(nn)
     array=0
    do concurrent(i=1:nn)
      array(i) = array(i) + f2()
    end do
     write(1,*)merge("OK", "NG", all(array == 1.))
     end

     subroutine sub2(nn)
use m1
      integer(8)::i,nn
     real(8)::array(nn)
     array=0
      do i=1,nn
      array(i) = array(i) + f2()
      end do
      write(1,*) ,merge("OK", "NG", all(array == 1.))
      end

      integer(8)::nn = 10
      character*10 r
      call sub(nn)
      call sub2(nn)
      rewind 1
      read(1,'(a)') r
      if (index(r,'OK')==0) print *,101
      read(1,'(a)') r
      if (index(r,'OK')==0) print *,102
      print *,'pass'
      end


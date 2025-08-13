  module m1
      integer::mask(10,10,10)=1
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
       real(8)::array(nn,nn,nn)
    array=0
    do concurrent(i=1:nn,j=1:nn,k=1:nn)
      array(i,j,k) = array(i,j,k) + f2()
    end do
     write(4,*)merge("OK", "NG", all(array == 1.))
     end
      print *,'pass'
      end

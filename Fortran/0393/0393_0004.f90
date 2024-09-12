       subroutine sub(nn)
       integer(8)::i,nn
       real(8)::array(nn,1,1)
    array=0
    do concurrent(i=1:nn,j=1:1)
      array(i,1,1) = f2()
    end do
    contains
      pure      function f2()
      f2=1
      end function
     end
      print *,'pass'
      end

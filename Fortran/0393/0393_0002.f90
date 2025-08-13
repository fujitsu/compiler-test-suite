       subroutine sub(nn)
       integer(8)::i,nn
       real(8)::array(nn,nn,nn)
    array=0
    do i=1,nn
      array(i,j,k) = array(i,j,k)
    end do
     write(3,*)merge("OK", "NG", all(array == 1.))
     end
      print *,'pass'
      end

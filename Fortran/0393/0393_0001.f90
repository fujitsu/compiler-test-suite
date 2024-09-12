       subroutine sub(nn)
       integer(8)::i,nn
       real(8)::array(nn,nn,nn)
       integer(1)::mask(nn,nn,nn)
    mask=1
    array=0
    do concurrent(i=1:nn,j=1:nn,k=1:nn,mask(i,j,k)==1)
      array(i,j,k) = array(i,j,k)
    end do
     write(1,*)merge("OK", "NG", all(array == 1.))
     end
      print *,'pass'
      end

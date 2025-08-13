       subroutine sub(nn)
       implicit none
       integer(8)::i,nn
       real(8)::array(nn)
    do concurrent(i=1:nn)
      array(i) = 0.0
      array(i) = array(i) + 1
    end do
     write(3,*)merge("OK", "NG", all(array == 1.))
     end

     subroutine sub2(nn)
     implicit none
      integer(8)::i,nn
     real(8)::array(nn)
      do i=1,nn
      array(i) = 0.0
      array(i) = array(i) + 1
      end do
      write(3,*) ,merge("OK", "NG", all(array == 1.))
      end

      integer(8)::nn = 10
      character*10 r
      call sub(nn)
      call sub2(nn)
      rewind 3
      read(3,'(a)') r
      if (index(r,'OK')==0) print *,101
      read(3,'(a)') r
      if (index(r,'OK')==0) print *,102
      print *,'pass'
      end

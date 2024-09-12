  module m1
      integer::mask(9,10,11)=1
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
       real(8)::array(nn-1,nn,nn+1)
       real(8)::array1(nn-1,nn,nn+1)
    array=0
    array1=0
    do concurrent(k=1:nn+1)
    do concurrent(i=1:nn-1,j=1:nn)
      array(i,j,k) = array1(i,j,k) + f2()
    end do
    end do
     write(1,*)merge("OK", "NG", all(array == 1.))
    array=0
    do concurrent(k=1:nn+1)
    do concurrent(i=1:nn-1,j=1:nn,mask(i,j,k)==1)
      array(i,j,k) = array(i,j,k) + f2()
    end do
    end do
     write(1,*)merge("OK", "NG", all(array == 1.))
     end
     subroutine sub2(nn)
use m1
      integer(8)::i,nn
     real(8)::array(nn)
       real(8)::array1(nn)
    array=0
    array1=0
      do i=1,nn
      array(i) = array1(i) + f2()
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
      read(1,'(a)') r
      if (index(r,'OK')==0) print *,103
      print *,'pass'
      end

      subroutine sub_2(ii)
      integer il,ia
      common /as/ia
      assign 1 to ia
 1    format(2i5)
      il=ii+1
      print ia,ii,il
      ii=ii+1
      return
      end
      subroutine sub_1(ii)
      integer il
      il=ii+1
      print 10,ii,il
      ii=ii+1
      print 10,ii,il
      call sub_3(ii)
 10   format(2i5)
      return
      end
      subroutine sub_3(ii)
      integer il
      il=ii+1
      print 10,'sub_3 ',ii,il
      ii=ii+1
      print 10,'sub_3 ',ii,il
 10   format(a,2i5)
      return
      end
      subroutine sub_1com
      integer icom1
      common /com/icom1
      icom1=icom1+1
      print 10,icom1
      icom1=icom1+1
      print 10,icom1
      call sub_3com
 10   format(2i5)
      return
      end
      subroutine sub_3com
      integer icom3
      common /com/icom3
      icom3=icom3+1
      print 10,'sub_3com ',icom3
      icom3=icom3+1
      print 10,'sub_3com ',icom3
 10   format(a,2i5)
      return
      end
      common /com/icom
      common /as/iam
      assign 1 to iam
 1    format(2i5)
      i=1
      icom=1
      call sub_1(i)
      print 10,i
      call sub_2(i)
      print 10,i
      call sub_1com
      print 10,icom
 10   format(i10)
      stop
      end

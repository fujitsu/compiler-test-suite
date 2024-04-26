      subroutine sub3(ia)
      integer ia
      print *,ia
      return 
      end
      subroutine sub1(ia)
      integer ia
      print *,ia
      call sub2(ia+1)      
      return 
      end
      subroutine sub2(ia)
      integer ia
      print *,ia
      call sub3(ia+1)      
      return 
      end
      subroutine subl3
      integer ia
      common /com/ia
      ia=ia+1
      print *,ia
      return 
      end
      subroutine subl1
      integer ia
      common /com/ia
      call subl2
      ia=ia+1
      print *,ia
      return 
      end
      subroutine subl2
      integer ia
      common /com/ia
      call subl3
      ia=ia+1
      print *,ia
      return 
      end
      integer im,ia
      common /com/ia
      im=1
      ia=1
      call sub1(im)
      call subl1
      stop
      end

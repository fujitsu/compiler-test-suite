      subroutine sub
      integer*4 comi,savei,autoi
      common    /com/comi
      save :: savei
      comi=1;savei=1;autoi=1
      call s_c2
      call s_c1
      print *,comi,savei,autoi
      contains
        subroutine s_c2
        comi=2;savei=2;autoi=2
        return
        end subroutine s_c2
        subroutine s_c1
        print *,comi,savei,autoi
        call s_c2
        print *,comi,savei,autoi
        end subroutine s_c1
      end subroutine sub
      integer*4 comm
      common /com/comm
      comm=10
      call sub
      print *,comm
      end

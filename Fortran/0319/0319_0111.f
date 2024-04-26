      subroutine sub
      integer*4 comi,savei,autoi
      common    /com/comi
      save :: savei
      comi=1;savei=1;autoi=1
      call s_c2
      call s_c1
      print *,comi,savei,autoi
      call s_c1
      contains
        subroutine s_c1
        save :: isave_sc1
        isave_sc1=11
        if ( isave_sc1.eq.11 ) then
          call s_c2
          print *,comi,savei,autoi,isave_sc1
        endif
        isave_sc1=12
        end subroutine s_c1
        recursive subroutine s_c2
        save :: isave_sc2
          print *,comi,savei,autoi,isave_sc2
        if ( isave_sc2.eq.11 ) then
	  return
        endif
        comi=comi+2;savei=comi+2;autoi=comi+2;isave_sc2=comi+2
          print *,comi,savei,autoi,isave_sc2
        call s_c2
	comi=comi+1
        return
        end subroutine s_c2
      end subroutine sub
      integer*4 comm
      common /com/comm
      comm=10
      call sub
      print *,comm
      end

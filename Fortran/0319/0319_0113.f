      recursive subroutine sub
      integer*4 comi,savei,autoi
      common    /com/comi
      save :: savei
      if ( savei.eq.0 ) then
        comi=1;autoi=1;savei = 1
        call s_c1
        savei = savei + savei
        print *,'sub:call soon s_c1 1st. savei=',savei
        print *,comi,savei,autoi
      endif
      print *,'sub:call soon s_c1 2nd.'
      call s_c1
      print *,comi,savei
      return
      contains
        recursive subroutine s_c1
        save :: isave_sc1
        print *,'s_c1 now'
        if ( savei.eq.1 ) then
          savei = 2
          isave_sc1=11
          call sub
          isave_sc1=isave_sc1+isave_sc1
          print *,'sc_1:call soon sub by if. savei=',savei
          print *,'                          isave_sc1=',isave_sc1
        else if ( comi.eq.1 ) then
	  comi=2
          isave_sc1=12
          call sub
          isave_sc1=isave_sc1+isave_sc1
          print *,'sc_1:call soon sub by else if. savei=',savei
          print *,'                               isave_sc1=',isave_sc1
        endif
        isave_sc1=13
        print *,'s_c1 end'
        end subroutine s_c1
      end subroutine sub
      integer*4 comm
      common /com/comm
      comm=10
      call sub
      print *,comm
      end

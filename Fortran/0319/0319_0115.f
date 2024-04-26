      module mod
      integer*4,save :: savem
      logical*4 ck(7)
      contains
      recursive subroutine sub
      integer*4 comi,savei,autoi
      common    /com/comi
      save :: savei
      if ( savei.eq.0 ) then
        comi=1;autoi=1;savei=1;savem=1
        call s_c1
        savei = savei + savei
	if ( savei .ne. 160 ) ck(1)=.TRUE.
      endif
      savei=20
      call s_c1
      return
      contains
        recursive subroutine s_c1
        save :: isave_sc1
        if ( savei.eq.1 ) then
          savei = 2
          isave_sc1=11
          savem=4
          savei=8
          call sub_b
          savem    =savem    +savem
          savei    =savei    +savei
          isave_sc1=isave_sc1+isave_sc1
	  if ( savem.ne.40 ) ck(5)=.TRUE.
	  if ( savei.ne.80 ) ck(6)=.TRUE.
	  if ( isave_sc1.ne.26 ) ck(7)=.TRUE.
        else if ( comi.eq.1 ) then
	  comi=2
          isave_sc1=12
          savem    =4
          savei    =8
          call sub_b
          savem    =savem    +savem
          savei    =savei    +savei
          isave_sc1=isave_sc1+isave_sc1
	  if ( savem.ne.20 ) ck(2)=.TRUE.
	  if ( savei.ne.40 ) ck(3)=.TRUE.
	  if ( isave_sc1.ne.26 ) ck(4)=.TRUE.
        endif
        isave_sc1=13
        end subroutine s_c1
      end subroutine sub
      recursive subroutine sub_b
      savem=10
      call sub
      return
      end subroutine sub_b
      end module
      use mod
      integer*4 comm
      common /com/comm
      comm=10
      ck=.FALSE.
      call sub
      if (ck(1)) print *,'ng chk 1'
      if (ck(2)) print *,'ng chk 2'
      if (ck(3)) print *,'ng chk 3'
      if (ck(4)) print *,'ng chk 4'
      if (ck(5)) print *,'ng chk 5'
      if (ck(6)) print *,'ng chk 6'
      if (ck(7)) print *,'ng chk 7'
      print *,comm
      end

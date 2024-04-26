      module mod
      integer*4 modi
      contains
        subroutine sub_1
        integer*4 comi,savei,autoi
        common /com/comi,comr
        save :: savei,saver
        comi=1;comr=1.;savei=1;autoi=1;modi=1;saver=1.0
        call sub_2
        print *,'1st ',comi,comr,savei,autoi,modi,saver
        end subroutine sub_1
        recursive subroutine sub_2
        integer*4 comi2,savei2,autoi2
        common    /com/comi2,comr2
        save:: savei2,saver2
        savei2=modi+modi;autoi2=comi2+comi2;saver=comr2+comr2
        comr2=comr2+comr2
	if ( savei2.eq.2 ) call s_c2
	if ( savei2.eq.8 ) return
        modi=savei2
	call sub_2
        return
        contains
          recursive subroutine s_c2
          comi2=2;savei2=2;autoi2=2;modi=2;saver2=2.0;comr2=2.
          call sub_2
          print *,'2nd ',comi2,savei2,autoi2,modi,saver2,comr2
          return
          end subroutine s_c2
        end subroutine sub_2
      end module
      use mod
      integer*4 comim
      common /com/comim,dummy
      modi=10;comim=10
      call sub_1
      print *,modi,comim
      stop
      end

      module mod
      integer*4 modi
      contains
        subroutine sub_1
        integer*4 comi,savei,autoi
        common /com/comi
        save :: savei
        comi=1;savei=1;autoi=1;modi=1
        call s_c1
        print *,comi,savei,autoi,modi
        contains
          subroutine s_c1
          comi=2;savei=2;autoi=2;modi=2
          call sub_2
          print *,comi,savei,autoi,modi
          return
          end subroutine s_c1
        end subroutine sub_1
        recursive subroutine sub_2
        integer*4 comi2,savei2,autoi2
        common    /com/comi2
        save:: savei2
        savei2=modi+modi; autoi2=comi2+comi2
	if ( savei2.eq.8 ) return
        modi=savei2
	call sub_2
        return
        end subroutine sub_2
      end module
      use mod
      integer*4 comim
      common /com/comim
      modi=10;comim=10
      call sub_1
      print *,modi,comim
      stop
      end

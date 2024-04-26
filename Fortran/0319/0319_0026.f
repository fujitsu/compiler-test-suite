      subroutine sub_acv(ary,p_ary)
      integer,dimension(20,5)::ary
      integer,dimension(5,20)::p_ary
      ary = reshape(source=p_ary,shape =(/20,5/) )
      return 
      end
      integer,dimension(20,5)::ary_area
      integer,dimension(5,20)::pram_ary
      parameter (pram_ary=reshape(source=(/ ((i,i=1,5),j=1,20) /),
     +                            shape =(/5,20/)                  ) )
      call sub_acv(ary_area,pram_ary)
      print *,ary_area(20,3)
      stop 
      end


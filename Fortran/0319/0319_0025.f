      subroutine sub_acv(ary)
      integer,dimension(20,5)::ary ,p_ary
      parameter (p_ary=reshape(source=(/ ((i,i=1,20),j=1,5) /),
     +                         shape =(/20,5/)                  ) )
      do i=1,5
       ary(:,i) = (/ (i,i=1,20) /)
      enddo
      ary = p_ary + ary
      return 
      end
      integer,dimension(20,5)::ary_area
      call sub_acv(ary_area)
      print *,ary_area(20,3)
      stop 
      end


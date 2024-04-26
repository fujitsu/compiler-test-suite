      subroutine sub_cca(ary,p_ary)
      character*(*) ,dimension(:) ::ary,p_ary
      call sub_cca1(ary, p_ary)
      return 
      end
      subroutine sub_cca1(ary,p_ary)
      character*(*),dimension(10):: ary, p_ary
      do i=1,10
        ary(i)( 1:10) = p_ary(i)
        ary(i)(11:20) = p_ary(i)
      enddo
      return 
      end
      character*(10),dimension(10)::pram_ary
      character*(20),dimension(10)::ary_area
      interface 
        subroutine sub_cca(a,p)
        character*(*) ,dimension(:) ::a,p
        end subroutine 
      end interface
      do i=1,10
        pram_ary(i)='-12345678+'
      enddo
      call sub_cca(ary_area,pram_ary)
      print *,ary_area(7)
      stop 
      end





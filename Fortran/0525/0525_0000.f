        subroutine sub    
          character(kind=1,len=2),allocatable :: p_arr(:)
          character(kind=1,len=3),allocatable :: p_arr2(:)
          character(kind=1,len=4),allocatable :: p_arr3(:)
          character(*),parameter::p11='11'
          character(*),parameter::p12='33'
          character(*),parameter::p21='222'
          character(*),parameter::p22='444'
          character(*),parameter::p31='5555'
          character(*),parameter::p32='6666'
          character(*),parameter::p33='????'
          p_arr = [p11,p12]
          p_arr2 = [p21,p22]
          p_arr3 = [p31,p32,p33]
          associate(aa=>p_arr//p_arr2//p_arr3) !
          if(len(aa).ne.9)print*,"103", len(aa)
          if(kind(aa).ne.4)print*,"123"
          if (any(aa/=[p11//p21//p31, p12//p22//p32])) print *,901
          end associate
          end

          print *,'pass'
      end


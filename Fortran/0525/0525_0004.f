        subroutine sub    
          character(kind=1,len=:  ),allocatable :: p_arr
          character(kind=1,len=:  ),allocatable :: p_arr2
          character(kind=1,len=:  ),allocatable :: p_arr3
          character(*),parameter::p11=repeat('1',200)
          character(*),parameter::p12=repeat('3',200)
          character(*),parameter::p21=repeat('2',300)
          character(*),parameter::p22=repeat('4',300)
          character(*),parameter::p31=repeat('5',400)
          character(*),parameter::p32=repeat('6',400)
          character(*),parameter::p33=repeat('?',400)
          p_arr = p11
          p_arr2 = p21
          p_arr3 = p31
          associate(aa=>p_arr//p_arr2//p_arr3) !
          if(len(aa).ne.len(p11)+len(p21)+len(p31))print*,"103", len(aa)
          if(kind(aa).ne.1)print*,"123"
          if (aa/=p11//p21//p31) print *,901
          end associate
          end
          call sub
          print *,'pass'
      end


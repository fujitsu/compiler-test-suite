      type t
          sequence
          integer t_i4
          character*2 t_ch2(2)
      end type
      type a_type
         sequence
         integer*1 a_i1
         type(t)::a_t(2)
      end type
      type (a_type):: d_4
      d_4%a_t(2)=t(9,'x')
      write(1,*)d_4%a_t(2)
      if (d_4%a_t(2)%t_i4/=9)print *,'error-1'
      if (any(d_4%a_t(2)%t_ch2/='x'))print *,'error-2'
print *,'pass'
      end

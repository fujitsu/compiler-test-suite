      call s1
      print *,'pass'
      end
      subroutine s1
      implicit integer(a-h)
      implicit real(selected_real_kind(10))(r,s)
      implicit type(entry)(u,x-z)
      type entry
        real (16)   a,b
        type(entry),pointer::c
      end type
      allocate(yt%c)
      if (kind(aa)/=4)print *,'fail'
      if (kind(ah)/=4)print *,'fail'
      if (kind(rr)/=8)print *,'fail'
      if (kind(sss)/=8)print *,'fail'
      if (kind(u%a)/=16)print *,'fail'
      if (kind(uuux_y%a)/=16)print *,'fail'
      if (kind(z_z_uuux_y%a)/=16)print *,'fail'
      if (kind(yt%c%a)/=16)print *,'fail'
    end subroutine

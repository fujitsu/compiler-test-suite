      complex*16 c,e
      complex*16,parameter::res1=(538974657445880.7,-4060384503791647.)
      complex*16,parameter::res2=(538974657445888.0,-4060384503791616.)
      complex*16,parameter::error=(10.0,50.0)
      call sub(c)
      c = c**2.0_8
      c = c**3.0_8
      c = c**4.0_8
      call sub(c)
      e = ((((c*c)*(c*c))*(c*c))*(((c*c)*(c*c))*(c*c)))*
     &    ((((c*c)*(c*c))*(c*c))*(((c*c)*(c*c))*(c*c)))
      if ((real(res1-res2) <= real(error)) .and.
     &    (imag(res1-res2) <= imag(error))) then
        print *,'ok'
      else
        print *,'ng'
      endif
      end

      subroutine sub(c)
      complex*16 c
      c = (4.0,2.0)
      end

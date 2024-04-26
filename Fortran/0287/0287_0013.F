      complex(kind=4)::c08_a,c08_b
      complex(kind=8)::c16_c,const
      
      c08_a = (-2.14677857e-04,-4.20601852e-03)
      c08_b = (-2.93442631,-1.27868855)
      c16_c = c08_a / c08_b

      const = (5.863948026672006d-04 ,1.177811878733337d-03)

      if (abs(c16_c - const) <= 5.8207661e-10) then
         print *,"ok"
      else
         print *,"ng", c16_c, const, c16_c - const, abs(c16_c - const)
      endif
      end

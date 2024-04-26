      call dbg
      stop
      end
      subroutine dbg
      complex*8 ca1(100)/100*0/,cb1(100)
      data cb1/100*(4.0,0.0)/

      do 10 i=1,99
         cb1(i) = 1
         ca1(i) =  cb1(i+1) / 2.2
10    continue

      if (abs(real(ca1(55))-1.81818175).lt.1.0e-6) then
         print *,"OK"
      else
         print *,"NG"
      endif

      return
      end

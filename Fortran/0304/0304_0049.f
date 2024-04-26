      call dbg
      stop
      end
      subroutine dbg
      real*8 ca1(100)/100*0/,cb1(100)
      data cb1/100*(4.0,0.0)/

      do 10 i=1,99
         cb1(i) = 1
         ca1(i) =  cb1(i+1) / 2.2
   10 continue

      if (abs(ca1(55) - 1.818181778773790) > 0.00001) then
         print *,"NG", " cal(55)=",ca1(55)
         print *,abs(ca1(55) - 1.818181778773790)
      else
         print *,"OK"
      endif

      return
      end

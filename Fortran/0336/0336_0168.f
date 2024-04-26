      real*8 UF 
      UF=-1.61352732213423255E-40_8
      UF=(UF)**(8_4)
      I = UF
      if (I==0) then
         print *,"OK"
      else
         print *,"NG",UF
      endif
      END

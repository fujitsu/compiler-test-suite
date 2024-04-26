      program f12
      real a(20,20,20,20)
      a=1.
      a(8:11,8:11,8:11,8:11) = a(8:11,9:12,10:13,11:14)+2.
      a(8:11,9:12,10:13,11:14) = a(1:4,1:4,1:4,1:4)
      if (int(sum(a))==160464) then
         print *,"OK"
      else
         print *,"NG"
      endif
      end

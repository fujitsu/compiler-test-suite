      program main
      integer*4  var1(5),var2(5)
      integer*4  var(6)
      integer*4  prg1(2,2),prg2(2,2)
      integer*4  prg3(2,2),prg4(2,2)
      integer*4  isum
      integer*4,parameter::ANS=24

      var1 = (/1,4,2,5,3/)
      var2 = (/0,2,1,1,2/)
      prg1 = reshape(var1(1:4),(/2,2/))
      prg2 = reshape(var2(1:4),(/2,2/))
      prg3 = reshape((var1(1:4)+var2(2:5))
     &     -(var1(2:5)+var2(1:4)),(/2,2/))
      prg4 = reshape(var1(2:5)+var2(1:4),(/2,2/))
     &     - reshape(var1(1:4)+var2(2:5),(/2,2/))

      var1 = (/reshape(prg3,(/4/)),var2(5)/)
      var2 = (/reshape(prg4,(/4/)),var1(5)/)

      where (reshape((/(var1-var2),var1(1)-var2(5)/),(/6/)) > 0)
         var = sum(reshape((/var1,var2(3:5)/),(/2,2,2/)))
      elsewhere
         var = sum(reshape((/var2,var1(3:5)/),(/2,2,2/)))
      endwhere

      isum = sum(var)
      if (isum.eq.ANS) then
         print *,"OK"
      else
         print *,isum
         print *,"NG"
      endif
      end

   module waytoobig_x
      real array(500000)
   end 
   module waytoobig
   use waytoobig_x
   integer i
   data i/1/
   end module waytoobig
   use waytoobig
   if (i/=1) write(6,*) "NG"
   array(500000)=2
   if (array(500000)/=2)write(6,*) "NG"
   print *,'pass'
   end

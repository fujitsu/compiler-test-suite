   character*3,dimension(2)::array=(/'123','456'/),x,y
   i=3
   x=cfu(array)
   if (any(x/=array))write(6,*) "NG"
   if (any(cfu(array)/=array))write(6,*) "NG"
   call chk(cfu(array))
   x=cfu(cfu(array))
   if (any(x/=array))write(6,*) "NG"
   if (any(cfu(cfu(array))/=array))write(6,*) "NG"
   call chk(cfu(cfu(array)))
   write(1,*)cfu(cfu(array))
   call ssx(array,y,'123','456')
   x=cfu((/'123','456'/))
   if (any(x/=(/'123','456'/)))write(6,*) "NG"
   if (any(cfu((/'123','456'/))/=array))write(6,*) "NG"
   call chk(cfu((/'123','456'/)))
   x=cfu(cfu((/'123','456'/)))
   if (any(x/=(/'123','456'/)))write(6,*) "NG"
   if (any(cfu(cfu((/'123','456'/)))/=array))write(6,*) "NG"
   write(1,*)cfu(cfu((/'123','456'/)))
   rewind 1
  read(1,*)jjj;if(jjj/=123456)write(6,*) "NG"
  read(1,*)jjj;if(jjj/=123456)write(6,*) "NG"
  read(1,*)jjj;if(jjj/=123456)write(6,*) "NG"
 print *,'pass'
   contains
subroutine ssx(a,y,y1,y2)
character*(*),dimension(:)::a,y
character*(*)::y1,y2
   y=cfu(a)
   if (any(y/=a))write(6,*) "NG"
   if (any(cfu(a)/=a))write(6,*) "NG"
   call chk(cfu(a))
   y=cfu(cfu(a))
   if (any(y/=array))write(6,*) "NG"
   if (any(cfu(cfu(a))/=a))write(6,*) "NG"
   call chk(cfu(cfu(a)))
   x=cfu((/y1,y2/))
   if (any(x/=(/y1,y2/)))write(6,*) "NG"
   if (any(cfu((/y1,y2/))/=array))write(6,*) "NG"
   call chk(cfu((/y1,y2/)))
   x=cfu(cfu((/y1,y2/)))
   if (any(x/=(/y1,y2/)))write(6,*) "NG"
   if (any(cfu(cfu((/y1,y2/)))/=array))write(6,*) "NG"
   write(1,*)cfu(cfu((/y1,y2/)))
end subroutine
     elemental function cfu(a)
     character*(i)::cfu
     character*(*),intent(in)::a
     cfu=a
     end function
   subroutine chk(a)
   character*(*),intent(in)::a(:)
   if (any(a/=(/'123','456'/)))write(6,*) "NG"
   end subroutine
   end
    
      

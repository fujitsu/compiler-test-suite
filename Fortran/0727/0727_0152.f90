  integer(8)::jjj
   character*3,dimension(2)::array=(/'123','456'/),x*6,y*6
   i=3
   x=p(cfu(array))
   if (any(x/=array//array))write(6,*) "NG"
   if (any(p(cfu(array))/=array//array))write(6,*) "NG"
   call chk(p(cfu(array)))
   x=p(cfu(cfu(array)))
   if (any(x/=array//array))write(6,*) "NG"
   if (any(p(cfu(cfu(array)))/=array//array))write(6,*) "NG"
   call chk(p(cfu(cfu(array))))
   write(60,*)p(cfu(cfu(array)))
   call ssx(array,y,'123','456')
   x=p(cfu((/'123','456'/)))
   if (any(x/=array//(/'123','456'/)))write(6,*) "NG"
   if (any(p(cfu((/'123','456'/)))/=array//array))write(6,*) "NG"
   call chk(p(cfu((/'123','456'/))))
   x=p(cfu(cfu((/'123','456'/))))
   if (any(x/=array//(/'123','456'/)))write(6,*) "NG"
   if (any(p(cfu(cfu((/'123','456'/))))/=array//array))write(6,*) "NG"
   write(60,*)p(cfu(cfu((/'123','456'/))))
   rewind 60
  read(60,*)jjj;if(jjj/=123123456456_8)write(6,*) "NG"
  read(60,*)jjj;if(jjj/=123123456456_8)write(6,*) "NG"
  read(60,*)jjj;if(jjj/=123123456456_8)write(6,*) "NG"
 print *,'pass'
   contains
subroutine ssx(a,y,y1,y2)
character*(*),dimension(:)::a,y
character*(*)::y1,y2
   y=p(cfu(a))
   if (any(y/=a//a))write(6,*) "NG"
   if (any(p(cfu(a))/=a//a))write(6,*) "NG"
   call chk(p(cfu(a)))
   y=p(cfu(cfu(a)))
   if (any(y/=a//array))write(6,*) "NG"
   if (any(p(cfu(cfu(a)))/=a//a))write(6,*) "NG"
   call chk(p(cfu(cfu(a))))
   x=p(cfu((/y1,y2/)))
   if (any(x/=a//(/y1,y2/)))write(6,*) "NG"
   if (any(p(cfu((/y1,y2/)))/=a//array))write(6,*) "NG"
   call chk(p(cfu((/y1,y2/))))
   x=p(cfu(cfu((/y1,y2/))))
   if (any(x/=a//(/y1,y2/)))write(6,*) "NG"
   if (any(p(cfu(cfu((/y1,y2/))))/=a//array))write(6,*) "NG"
   write(60,*)p(cfu(cfu((/y1,y2/))))
end subroutine
     elemental function cfu(a)
     character*(i)::cfu
     character*(*),intent(in)::a
     cfu=a
     end function
     elemental function p(a)
     character*(i*2)::p
     character*(*),intent(in)::a
     p=a//a
     end function
   subroutine chk(a)
   character*(*),intent(in)::a(:)
   if (any(a/=(/'123123','456456'/)))write(6,*) "NG"
   end subroutine
   end

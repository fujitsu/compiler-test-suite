 call s1
 print *,'pass'
 end
 module m1
  integer::i1=1
  type ww
    character::a1
  end type
  type w
  type(ww) ::a0(2,3)=reshape((/ww('1'),ww('2'),ww('3'),ww('4'),ww('5'),ww('6')/),(/2,3/))
  character,dimension(2,3)::a1=reshape((/'1','2','3','4','5','6'/),(/2,3/))
  end type
  contains
   elemental function ss1(x1)
   character,intent(in)::x1
   character ss1
   ss1=x1
   end function
   elemental function ss2(x1)
   type(ww),intent(in)::x1
   type(ww) ss2
   ss2=x1
   end function
 end
 subroutine s1
 use m1
 type(w)::x
 type(ww)::ssx2
 character  ssx1
 write(1,*) ss1((x%a1(1,1)))
 write(1,*) ssx1((x%a1(1,1)))
 write(1,*) ss2((x%a0(1,1)))
 write(1,*) ssx2((x%a0(1,1)))
 write(1,*) ss1((x%a1(i1+i1,i1+i1+i1)))
 write(1,*) ssx1((x%a1(i1+i1,i1+i1+i1)))
 write(1,*) ss2((x%a0(i1+i1,i1+i1+i1)))
 write(1,*) ssx2((x%a0(i1+i1,i1+i1+i1)))
 rewind 1
 read(1,*)i;if (i/=1)write(6,*) "NG"
 read(1,*)i;if (i/=1)write(6,*) "NG"
 read(1,*)i;if (i/=1)write(6,*) "NG"
 read(1,*)i;if (i/=1)write(6,*) "NG"
 read(1,*)i;if (i/=6)write(6,*) "NG"
 read(1,*)i;if (i/=6)write(6,*) "NG"
 read(1,*)i;if (i/=6)write(6,*) "NG"
 read(1,*)i;if (i/=6)write(6,*) "NG"
 end
   function ssx1(x1)
   character,intent(in)::x1
   character ssx1
   ssx1=x1
   end function
   function ssx2(x1)
   use m1,only:ww
   type(ww),intent(in)::x1
   type(ww) ssx2
   ssx2=x1
   end function

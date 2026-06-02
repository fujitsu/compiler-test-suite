      call s1
      print *,'pass'
      end
module m1
  interface sx
    module procedure sxa,sxb,sxc,sxd
  end interface
  interface operator(/=)
    module procedure stcmp
  end interface
 type st
   integer a
   complex b
   character c
 end type
 integer am(9)
 complex bm(9)
 character cm(9)
 type(st) dm(9)
 integer af(3,3)
 complex bf(3,3)
 character cf(3,3)
 type(st) df(3,3)
 integer a(9)
 complex b(9)
 character c(9)
 type(st) d(9)
 integer ::a1(9)
 complex ::b1(9)
 character::c1(9)
 type(st) d1(9)
 integer v9(9),v3(3)
 integer::k=1
contains 
   subroutine sxa(a)
    integer a(:,:)
    if (9/=size(a))print *,'fail'
    if (any(reshape(a,(/9/))/=am))print *,'fail'
   end subroutine
   subroutine sxb(a)
    complex a(:,:)
    if (9/=size(a))print *,'fail'
    if (any(reshape(a,(/9/))/=bm))print *,'fail'
   end subroutine
   subroutine sxc(a)
    character(*) a(:,:)
    if (len(a)/=1)print *,'fail'
    if (size(a)/=9)print *,'fail'
    if (any(reshape(a,(/9/))/=cm))print *,'fail'
   end subroutine
   subroutine sxd(a)
    type(st) a(:,:)
    if (9/=size(a))print *,'fail'
    if (any(reshape(a%a,(/9/))/=am))print *,'fail'
    if (any(reshape(a%b,(/9/))/=bm))print *,'fail'
    if (any(reshape(a%c,(/9/))/=cm))print *,'fail'
   end subroutine
   function   stcmp(a1,a2)
    type(st),intent(in):: a1(:),a2(:)
    logical,dimension(size(a1,1))::stcmp
    if (size(a1)/=size(a2))print *,'fail'
    if (any(a1%a/=a2%a))print *,'fail'
    if (any(a1%b/=a2%b))print *,'fail'
    if (any(a1%c/=a2%c))print *,'fail'
    stcmp=.false.
   end function  
end
 subroutine s1
 call ss0
 call ss2
 contains 
  subroutine ss0
   use m1
   v9=(/(i,i=1,9)/)
   v3=(/(i,i=1,3)/)
   am=(/ (i,i=1,9) /)
   bm=(/ (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9) /) 
   cm=(/ (achar(iachar('1')+i-1),i=1,9) /)
   af=reshape((/ (i,i=1,9) /) ,(/3,3/))
   bf=reshape((/ (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9) /) ,(/3,3/)) 
   cf=reshape((/ (achar(iachar('1')+i-1),i=1,9) /),(/3,3/))
   af(2,1)=0;af(2,3)=0
   bf(2,1)=0;bf(2,3)=0
   cf(2,1)='0';cf(2,3)='0'
   a1=(/2,8,0,0,0,0,0,2,0/)
   b1=(/(2,2),(8,8),(0,0),(0,0),(0,0),(0,0),(0,0),(2,2),(0,0)/)
   c1=(/'2','8','0','0','0','0','0','2','0'/)
   dm%a=(/ (i,i=1,9) /)
   dm%b=(/ (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9) /) 
   dm%c=(/ (achar(iachar('1')+i-1),i=1,9) /)
   d1%a=((/2,8,0,0,0,0,0,2,0/))
   d1%b=((/(2,2),(8,8),(0,0),(0,0),(0,0),(0,0),(0,0),(2,2),(0,0)/))
   d1%c=((/'2','8','0','0','0','0','0','2','0'/))
   df%a=af
   df%b=bf
   df%c=cf
  end subroutine
end
subroutine ss2
 use m1
 open(33,delim='quote'); open(36,delim='quote');open (39,delim='quote')
 open(40,delim='quote'); open(41,delim='quote')
 open(42,delim='quote'); open(43,delim='quote')
 write(31,*) unpack(vector=a1,mask=af==0,field=af)
 write(32,*) unpack(vector=b1,mask=bf==0,field=bf)
 write(33,*) unpack(vector=c1,mask=cf=='0',field=cf)
 write(34,*) unpack(vector=(/2,8,0,0,0,0,0,2,0/),mask=af==0,field=af)
 write(35,*) unpack(vector=(/(2,2),(8,8),(0,0),(0,0),(0,0),(0,0),(0,0),(2,2),(0,0)/),mask=bf==0,field=bf)
 write(36,*) unpack(vector=(/'2','8','0','0','0','0','0','2','0'/),mask=cf=='0',field=cf)
 write(37,*) unpack(vector=a1(v9),mask=af(v3,v3)==0,field=af(v3,v3))
 write(38,*) unpack(vector=b1(v9),mask=bf(v3,v3)==0,field=bf(v3,v3))
 write(39,*) unpack(vector=c1(v9),mask=cf(v3,v3)=='0',field=cf(v3,v3))
 write(40,*) unpack(vector=c1(:)(:k),mask=cf(:,:)(:k)=='0',field=cf(:,:)(:k))
 write(41,*) unpack(vector=c1(v9)(:k),mask=cf(v3,v3)(:k)=='0',field=cf(v3,v3)(:k))
 write(42,*) unpack(vector=d1,mask=df%c=='0',field=df)
 write(43,*) unpack(vector=d1(v9),mask=cf(v3,v3)=='0',field=df(v3,v3))
 rewind 31;rewind 32;rewind 33;rewind 34;rewind 35;rewind 36;rewind 37;rewind 38;rewind 39;rewind 40;rewind 41;rewind 42;rewind 43
 read (31,*) a;if (any(a/=am))print *,'fail'
 read (32,*) b;if (any(b/=bm))print *,'fail'
 read (33,*) c;if (any(c/=cm))print *,'fail'
 read (34,*) a;if (any(a/=am))print *,'fail'
 read (35,*) b;if (any(b/=bm))print *,'fail'
 read (36,*) c;if (any(c/=cm))print *,'fail'
 read (37,*) a;if (any(a/=am))print *,'fail'
 read (38,*) b;if (any(b/=bm))print *,'fail'
 read (39,*) c;if (any(c/=cm))print *,'fail'
 read (40,*) c;if (any(c/=cm))print *,'fail'
 read (41,*) c;if (any(c/=cm))print *,'fail'
 read (42,*) d;if (any(d/=dm))print *,'fail'
 read (43,*) d;if (any(d/=dm))print *,'fail'
 call sx(unpack(vector=a1,mask=af==0,field=af))
 call sx(unpack(vector=b1,mask=bf==0,field=bf))
 call sx(unpack(vector=c1,mask=cf=='0',field=cf))
 call sx(unpack(vector=c1(:)(:k),mask=cf(:,:)(:k)=='0',field=cf(:,:)(:k)))
 call sx(unpack(vector=(/2,8,0,0,0,0,0,2,0/),mask=af==0,field=af))
 call sx(unpack(vector=(/(2,2),(8,8),(0,0),(0,0),(0,0),(0,0),(0,0),(2,2),(0,0)/),mask=bf==0,field=bf))
 call sx(unpack(vector=(/'2','8','0','0','0','0','0','2','0'/),mask=cf=='0',field=cf))
 call sx(unpack(vector=a1(v9),mask=af==0,field=af(v3,v3)))
 call sx(unpack(vector=b1(v9),mask=bf==0,field=bf(v3,v3)))
 call sx(unpack(vector=c1(v9),mask=cf=='0',field=cf(v3,v3)))
 call sx(unpack(vector=c1(v9)(:k),mask=cf(v3,v3)(:k)=='0',field=cf(v3,v3)(:k)))
 call sx(unpack(vector=d1,mask=af==0,field=df))
 call sx(unpack(vector=d1(v9),mask=af==0,field=df(v3,v3)))
 end 

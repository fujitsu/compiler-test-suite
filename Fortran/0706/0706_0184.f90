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
 pointer am,bm,cm,dm,a,b,c,d,a1,b1,c1,d1,v3,v9
 target  am_t,bm_t,cm_t,dm_t,a_t,b_t,c_t,d_t,a1_t,b1_t,c1_t,d1_t,v3_t,v9_t
 integer am_t(18)
 complex bm_t(18)
 character cm_t(18)
 type(st) dm_t(18)
 integer a_t(18)
 complex b_t(18)
 character c_t(18)
 type(st) d_t(18)
 integer ::a1_t(6,6)
 complex ::b1_t(6,6)
 character::c1_t(6,6)
 type(st) d1_t(6,6)
 integer v9_t(18),v3_t(6)
 integer am(:)
 complex bm(:)
 character cm(:)
 type(st) dm(:)
 integer a(:)
 complex b(:)
 character c(:)
 type(st) d(:)
 integer ::a1(:,:)
 complex ::b1(:,:)
 character::c1(:,:)
 type(st) d1(:,:)
 integer v9(:),v3(:)
 integer::k=1
contains 
   subroutine sxa(i,a)
    integer a(:)
    if (i/=size(a))print *,'fail'
    if (any(a(:i)/=am(:i)))print *,'fail'
   end subroutine
   subroutine sxb(i,a)
    complex a(:)
    if (i/=size(a))print *,'fail'
    if (any(a(:i)/=bm(:i)))print *,'fail'
   end subroutine
   subroutine sxc(i,a)
    character(*) a(:)
    if (len(a)/=1)print *,'fail'
    if (i/=size(a))print *,'fail'
    if (any(a(:i)/=cm(:i)))print *,'fail'
   end subroutine
   subroutine sxd(i,a)
    type(st) a(:)
    if (i/=size(a))print *,'fail'
    if (any(a(:i)%a/=am(:i)))print *,'fail'
    if (any(a(:i)%b/=bm(:i)))print *,'fail'
    if (any(a(:i)%c/=cm(:i)))print *,'fail'
   end subroutine
   function   stcmp(a1,a2)
    type(st),intent(in):: a1(:),a2(:)
    logical,dimension(size(a1))::stcmp
    if (size(a1)/=size(a2))print *,'fail'
    if (any(a1%a/=a2%a))print *,'fail'
    if (any(a1%b/=a2%b))print *,'fail'
    if (any(a1%c/=a2%c))print *,'fail'
    stcmp=.false.
   end function  
end
 subroutine s1
 call ss0
 call ss1
 call ss2
 contains 
  subroutine ss0
   use m1
   v9=>v9_t(::2)
   v3=>v3_t(::2)
   am=>am_t(::2)
   bm=>bm_t(::2)
   cm=>cm_t(::2)
   dm=>dm_t(::2)
   a=>a_t(::2)
   b=>b_t(::2)
   c=>c_t(::2)
   d=>d_t(::2)
   a1=>a1_t(::2,::2)
   b1=>b1_t(::2,::2)
   c1=>c1_t(::2,::2)
   d1=>d1_t(::2,::2)
   v9=(/(i,i=1,9)/)
   v3=(/(i,i=1,3)/)
   am=(/ (i,i=1,9) /)
   bm=(/ (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9) /) 
   cm=(/ (achar(iachar('1')+i-1),i=1,9) /)
   a1=reshape((/0,1,0,0,0,0,0,2,0/),(/3,3/))
   b1=reshape((/(0,0),(1,1),(0,0),(0,0),(0,0),(0,0),(0,0),(2,2),(0,0)/),(/3,3/))
   c1=reshape((/'0','1','0','0','0','0','0','2','0'/),(/3,3/))
   dm%a=(/ (i,i=1,9) /)
   dm%b=(/ (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9) /) 
   dm%c=(/ (achar(iachar('1')+i-1),i=1,9) /)
   d1%a=reshape((/0,1,0,0,0,0,0,2,0/),(/3,3/))
   d1%b=reshape((/(0,0),(1,1),(0,0),(0,0),(0,0),(0,0),(0,0),(2,2),(0,0)/),(/3,3/))
   d1%c=reshape((/'0','1','0','0','0','0','0','2','0'/),(/3,3/))
  end subroutine
end
subroutine ss1
 use m1
 open(13,delim='quote'); open(16,delim='quote'); open(19,delim='quote')
 open(20,delim='quote'); open(21,delim='quote')
 open(22,delim='quote'); open(23,delim='quote')
 write(11,*) 2,pack(array=a1,mask=a1/=0)
 write(12,*) 2,pack(array=b1,mask=b1/=0)
 write(13,*) 2,pack(array=c1,mask=c1/='0')
 write(14,*) 2,pack(array=reshape((/0,1,0,0,0,0,0,2,0/),(/3,3/)),mask=a1/=0)
 write(15,*) 2,pack(array=reshape((/(0,0),(1,1),(0,0),(0,0),(0,0),(0,0),(0,0),(2,2),(0,0)/),(/3,3/)),mask=b1/=0)
 write(16,*) 2,pack(array=reshape((/'0','1','0','0','0','0','0','2','0'/),(/3,3/)),mask=c1/='0')
 write(17,*) 2,pack(array=a1(v3,v3),mask=a1(v3,v3)/=0)
 write(18,*) 2,pack(array=b1(v3,v3),mask=b1(v3,v3)/=0)
 write(19,*) 2,pack(array=c1(v3,v3),mask=c1(v3,v3)/='0')
 write(20,*) 2,pack(array=c1(:,:)(:k),mask=c1(:,:)(:k)/='0')
 write(21,*) 2,pack(array=c1(v3,v3)(:k),mask=c1(v3,v3)(:k)/='0')
 write(22,*) 2,pack(array=d1,mask=d1%c/='0')
 write(23,*) 2,pack(array=d1(v3,v3),mask=d1%c/='0')
 rewind 11;rewind 12;rewind 13;rewind 14;rewind 15;rewind 16;rewind 17;rewind 18;rewind 19;rewind 20;rewind 21;rewind 22;rewind 23
 read (11,*) i,a(:i);if (any(a(:i)/=am(:i)))print *,'fail'
 read (12,*) i,b(:i);if (any(b(:i)/=bm(:i)))print *,'fail'
 read (13,*) i,c(:i);if (any(c(:i)/=cm(:i)))print *,'fail'
 read (14,*) i,a(:i);if (any(a(:i)/=am(:i)))print *,'fail'
 read (15,*) i,b(:i);if (any(b(:i)/=bm(:i)))print *,'fail'
 read (16,*) i,c(:i);if (any(c(:i)/=cm(:i)))print *,'fail'
 read (17,*) i,a(:i);if (any(a(:i)/=am(:i)))print *,'fail'
 read (18,*) i,b(:i);if (any(b(:i)/=bm(:i)))print *,'fail'
 read (19,*) i,c(:i);if (any(c(:i)/=cm(:i)))print *,'fail'
 read (20,*) i,c(:i);if (any(c(:i)/=cm(:i)))print *,'fail'
 read (21,*) i,c(:i);if (any(c(:i)/=cm(:i)))print *,'fail'
 read (22,*) i,d(:i);if (any(d(:i)/=dm(:i)))print *,'fail'
 read (23,*) i,d(:i);if (any(d(:i)/=dm(:i)))print *,'fail'
 call sx(2,pack(array=a1,mask=a1/=0))
 call sx(2,pack(array=b1,mask=b1/=0))
 call sx(2,pack(array=c1,mask=c1/='0'))
 call sx(2,pack(array=c1(:,:)(:k),mask=c1(:,:)(:k)/='0'))
 call sx(2,pack(array=reshape((/0,1,0,0,0,0,0,2,0/),(/3,3/)),mask=a1/=0))
 call sx(2,pack(array=reshape((/(0,0),(1,1),(0,0),(0,0),(0,0),(0,0),(0,0),(2,2),(0,0)/),(/3,3/)),mask=b1/=0))
 call sx(2,pack(array=reshape((/'0','1','0','0','0','0','0','2','0'/),(/3,3/)),mask=c1/='0'))
 call sx(2,pack(array=a1(v3,v3),mask=a1(v3,v3)/=0))
 call sx(2,pack(array=b1(v3,v3),mask=b1(v3,v3)/=0))
 call sx(2,pack(array=c1(v3,v3),mask=c1(v3,v3)/='0'))
 call sx(2,pack(array=c1(v3,v3)(:k),mask=c1(v3,v3)(:k)/='0'))
 call sx(2,pack(array=d1,mask=d1%c/='0'))
 call sx(2,pack(array=d1(v3,v3),mask=d1%c/='0'))
 end 
subroutine ss2
 use m1
 open(33,delim='quote'); open(36,delim='quote');open (39,delim='quote')
 open(40,delim='quote'); open(41,delim='quote')
 open(42,delim='quote'); open(43,delim='quote')
 write(31,*) 9,pack(array=a1,mask=a1/=0,vector=am)
 write(32,*) 9,pack(array=b1,mask=b1/=0,vector=bm)
 write(33,*) 9,pack(array=c1,mask=c1/='0',vector=cm)
 write(34,*) 9,pack(array=reshape((/0,1,0,0,0,0,0,2,0/),(/3,3/)),mask=a1/=0,vector=am)
 write(35,*) 9,pack(array=reshape((/(0,0),(1,1),(0,0),(0,0),(0,0),(0,0),(0,0),(2,2),(0,0)/),(/3,3/)),mask=b1/=0,vector=bm)
 write(36,*) 9,pack(array=reshape((/'0','1','0','0','0','0','0','2','0'/),(/3,3/)),mask=c1/='0',vector=cm)
 write(37,*) 9,pack(array=a1(v3,v3),mask=a1(v3,v3)/=0,vector=am(v9))
 write(38,*) 9,pack(array=b1(v3,v3),mask=b1(v3,v3)/=0,vector=bm(v9))
 write(39,*) 9,pack(array=c1(v3,v3),mask=c1(v3,v3)/='0',vector=cm(v9))
 write(40,*) 9,pack(array=c1(:,:)(:k),mask=c1(:,:)(:k)/='0',vector=cm(:)(:k))
 write(41,*) 9,pack(array=c1(v3,v3)(:k),mask=c1(v3,v3)(:k)/='0',vector=cm(v9)(:k))
 write(42,*) 9,pack(array=d1,mask=d1%c/='0',vector=dm)
 write(43,*) 9,pack(array=d1(v3,v3),mask=c1(v3,v3)/='0',vector=dm(v9))
 rewind 31;rewind 32;rewind 33;rewind 34;rewind 35;rewind 36;rewind 37;rewind 38;rewind 39;rewind 40;rewind 41;rewind 42;rewind 43
 read (31,*) i,a(:i);if (any(a(:i)/=am(:i)))print *,'fail'
 read (32,*) i,b(:i);if (any(b(:i)/=bm(:i)))print *,'fail'
 read (33,*) i,c(:i);if (any(c(:i)/=cm(:i)))print *,'fail'
 read (34,*) i,a(:i);if (any(a(:i)/=am(:i)))print *,'fail'
 read (35,*) i,b(:i);if (any(b(:i)/=bm(:i)))print *,'fail'
 read (36,*) i,c(:i);if (any(c(:i)/=cm(:i)))print *,'fail'
 read (37,*) i,a(:i);if (any(a(:i)/=am(:i)))print *,'fail'
 read (38,*) i,b(:i);if (any(b(:i)/=bm(:i)))print *,'fail'
 read (39,*) i,c(:i);if (any(c(:i)/=cm(:i)))print *,'fail'
 read (40,*) i,c(:i);if (any(c(:i)/=cm(:i)))print *,'fail'
 read (41,*) i,c(:i);if (any(c(:i)/=cm(:i)))print *,'fail'
 read (42,*) i,d(:i);if (any(d(:i)/=dm(:i)))print *,'fail'
 read (43,*) i,d(:i);if (any(d(:i)/=dm(:i)))print *,'fail'
 call sx(9,pack(array=a1,mask=a1/=0,vector=am))
 call sx(9,pack(array=b1,mask=b1/=0,vector=bm))
 call sx(9,pack(array=c1,mask=c1/='0',vector=cm))
 call sx(9,pack(array=c1(:,:)(:k),mask=c1(:,:)(:k)/='0',vector=cm(:)(:k)))
 call sx(9,pack(array=reshape((/0,1,0,0,0,0,0,2,0/),(/3,3/)),mask=a1/=0,vector=am))
 call sx(9,pack(array=reshape((/(0,0),(1,1),(0,0),(0,0),(0,0),(0,0),(0,0),(2,2),(0,0)/),(/3,3/)),mask=b1/=0,vector=bm))
 call sx(9,pack(array=reshape((/'0','1','0','0','0','0','0','2','0'/),(/3,3/)),mask=c1/='0',vector=cm))
 call sx(9,pack(array=a1(v3,v3),mask=a1/=0,vector=am(v9)))
 call sx(9,pack(array=b1(v3,v3),mask=b1/=0,vector=bm(v9)))
 call sx(9,pack(array=c1(v3,v3),mask=c1/='0',vector=cm(v9)))
 call sx(9,pack(array=c1(v3,v3)(:k),mask=c1(v3,v3)(:k)/='0',vector=cm(v9)(:k)))
 call sx(9,pack(array=d1,mask=a1/=0,vector=dm))
 call sx(9,pack(array=d1(v3,v3),mask=a1/=0,vector=dm(v9)))
 end 

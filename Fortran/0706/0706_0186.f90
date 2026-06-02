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
 integer,parameter,dimension(3)::shape=(/3,2,3/)
 type st
   integer a
   complex b
   character c
 end type
 integer,dimension(2)::iz=(/999,2/)
 integer,pointer,dimension(:)::ip
 integer ,pointer::am(:,:,:)
 complex ,pointer::bm(:,:,:)
 character ,pointer::cm(:,:,:)
 type(st) ,pointer::dm(:,:,:)
 integer ,pointer::a(:,:,:)
 complex ,pointer::b(:,:,:)
 character ,pointer::c(:,:,:)
 type(st) ,pointer::d(:,:,:)
 integer ,pointer::a1(:,:)
 complex ,pointer::b1(:,:)
 character,pointer::c1(:,:)
 type(st) ,pointer::d1(:,:)
 integer ,pointer::v2(:),v3(:)
 integer::k=1
 integer,pointer,dimension(:,:)::za1,za2
 complex,pointer,dimension(:,:)::zb1,zb2
 character,pointer,dimension(:,:)::zc1,zc2
contains 
integer function id()
pointer id
allocate(id)
id=2
end function
   subroutine sxa(a)
    integer a(:,:,:)
    if (any(ubound(a)/=(/3,2,3/)))print *,'fail'
    if (any(a/=am))print *,'fail'
   end subroutine
   subroutine sxb(a)
    complex a(:,:,:)
    if (any(ubound(a)/=(/3,2,3/)))print *,'fail'
    if (any(a/=bm))print *,'fail'
   end subroutine
   subroutine sxc(a)
    character(*) a(:,:,:)
    if (len(a)/=1)print *,'fail'
    if (any(ubound(a)/=(/3,2,3/)))print *,'fail'
    if (any(a/=cm))print *,'fail'
   end subroutine
   subroutine sxd(a)
    type(st) a(:,:,:)
    if (any(ubound(a)/=(/3,2,3/)))print *,'fail'
    if (any(a%a/=am))print *,'fail'
    if (any(a%b/=bm))print *,'fail'
    if (any(a%c/=cm))print *,'fail'
   end subroutine
   function   stcmp(a1,a2)
    type(st),intent(in):: a1(:,:,:),a2(:,:,:)
    logical,dimension(size(a1,1),size(a1,2),size(a1,3))::stcmp
    if (size(a1)/=size(a2))print *,'fail'
    if (any(ubound(a1)/=ubound(a2)))print *,'fail'
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
   allocate (ip(3));ip=(/999,999,2/)
   allocate(am(3,2,3))
 allocate(bm(3,2,3))
 allocate( cm(3,2,3))
allocate( dm(3,2,3))
allocate(a(3,2,3))
allocate(b(3,2,3))
allocate( c(3,2,3))
allocate( d(3,2,3))
allocate(a1(3,3))
allocate(b1(3,3))
allocate(c1(3,3))
allocate( d1(3,3))
allocate(v2(2),v3(3))
   v2=(/(i,i=1,2)/)
   v3=(/(i,i=1,3)/)
   a1=reshape((/ (i,i=1,9) /),shape(::2))
   b1=reshape((/ (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9)/),shape(::2))
   c1=reshape((/ (achar(iachar('1')+i-1),i=1,9) /),shape(::2))
   d1%a=a1
   d1%b=b1
   d1%c=c1
   do i=1,size(am,2)
   za1=>am(:,i,:)
   zb1=>bm(:,i,:)
   zc1=>cm(:,i,:)
   za2=>dm(:,i,:)%a
   zb2=>dm(:,i,:)%b
   zc2=>dm(:,i,:)%c
   am(:,i,:)=a1
   bm(:,i,:)=b1
   cm(:,i,:)=c1
   dm(:,i,:)%a=a1
   dm(:,i,:)%b=b1
   dm(:,i,:)%c=c1
   if (any(za1/=a1))print *,'fail'
   if (any(za2/=a1))print *,'fail'
   if (any(zb1/=b1))print *,'fail'
   if (any(zb2/=b1))print *,'fail'
   if (any(zc1/=c1))print *,'fail'
   if (any(zc2/=c1))print *,'fail'
   end do
  end subroutine
end
subroutine ss1
 use m1
 open(13,delim='quote'); open(16,delim='quote'); open(19,delim='quote')
 open(20,delim='quote'); open(21,delim='quote')
 open(22,delim='quote'); open(23,delim='quote')
 write(11,*) spread(source=a1,dim=id(),ncopies=ip(3))
 write(12,*) spread(source=b1,dim=iz(id()),ncopies=ip(3))
 write(13,*) spread(source=c1,dim=ip(id()+1),ncopies=ip(3))
 write(17,*) spread(source=a1(v3,v3),dim=id(),ncopies=ip(3))
 write(18,*) spread(source=b1(v3,v3),dim=iz(id()),ncopies=ip(3))
 write(19,*) spread(source=c1(v3,v3),dim=ip(iz(2)+1),ncopies=ip(3))
 write(20,*) spread(source=c1(:,:)(:k),dim=int(ip(3),8),ncopies=ip(3))
 write(21,*) spread(source=c1(v3,v3)(:k),dim=2_1,ncopies=2_1)
 write(22,*) spread(source=d1,dim=2_8,ncopies=ip(3))
 write(23,*) spread(source=d1(v3,v3),dim=2_8,ncopies=ip(3))
 rewind 11;rewind 12;rewind 13;rewind 14;rewind 15;rewind 16;rewind 17;rewind 18;rewind 19;rewind 20;rewind 21;rewind 22;rewind 23
 read (11,*)a;if (any(a/=am))print *,'fail'
 read (12,*)b;if (any(b/=bm))print *,'fail'
 read (13,*)c;if (any(c/=cm))print *,'fail'
 read (17,*)a;if (any(a/=am))print *,'fail'
 read (18,*)b;if (any(b/=bm))print *,'fail'
 read (19,*)c;if (any(c/=cm))print *,'fail'
 read (20,*)c;if (any(c/=cm))print *,'fail'
 read (21,*)c;if (any(c/=cm))print *,'fail'
 read (22,*)d;if (any(d/=dm))print *,'fail'
 read (23,*)d;if (any(d/=dm))print *,'fail'
 call sx(spread(source=a1,dim=id(),ncopies=ip(3)))
 call sx(spread(source=b1,dim=iz(id()),ncopies=ip(3)))
 call sx(spread(source=c1,dim=ip(id()+1),ncopies=ip(3)))
 call sx(spread(source=c1(:,:)(:k),dim=int(id(),8),ncopies=ip(3)))
 call sx(spread(source=a1(v3,v3),dim=id(),ncopies=ip(3)))
 call sx(spread(source=b1(v3,v3),dim=iz(id()),ncopies=ip(3)))
 call sx(spread(source=c1(v3,v3),dim=ip(iz(2)+1),ncopies=ip(3)))
 call sx(spread(source=c1(v3,v3)(:k),dim=2_8,ncopies=2_8))
 call sx(spread(source=d1,dim=2,ncopies=ip(3)))
 call sx(spread(source=d1(v3,v3),dim=2,ncopies=ip(3)))
 end 
subroutine ss2
 use m1
 open(33,delim='quote'); open(36,delim='quote');open (39,delim='quote')
 open(40,delim='quote'); open(41,delim='quote')
 open(42,delim='quote'); open(43,delim='quote')
 write(31,*) spread(source=a1,dim=id(),ncopies=id())
 write(32,*) spread(source=b1,dim=iz(id()),ncopies=iz(id()))
 write(33,*) spread(source=c1,dim=ip(id()+1),ncopies=ip(id()+1))
 write(37,*) spread(source=a1(v3,v3),dim=id(),ncopies=id())
 write(38,*) spread(source=b1(v3,v3),dim=iz(id()),ncopies=iz(id()))
 write(39,*) spread(source=c1(v3,v3),dim=ip(iz(2)+1),ncopies=ip(id()+1))
 write(40,*) spread(source=c1(:,:)(:k),dim=2,ncopies=ip(id()+1))
 write(41,*) spread(source=c1(v3,v3)(:k),dim=2,ncopies=ip(id()+1))
 write(42,*) spread(source=d1,dim=2,ncopies=ip(id()+1))
 write(43,*) spread(source=d1(v3,v3),dim=ip(iz(2)+1),ncopies=ip(id()+1))
 rewind 31;rewind 32;rewind 33
rewind 37;rewind 38;rewind 39;rewind 40;rewind 41;rewind 42;rewind 43
 read (31,*)a;if (any(a/=am))print *,'fail'
 read (32,*)b;if (any(b/=bm))print *,'fail'
 read (33,*)c;if (any(c/=cm))print *,'fail'
 read (37,*)a;if (any(a/=am))print *,'fail'
 read (38,*)b;if (any(b/=bm))print *,'fail'
 read (39,*)c;if (any(c/=cm))print *,'fail'
 read (40,*)c;if (any(c/=cm))print *,'fail'
 read (41,*)c;if (any(c/=cm))print *,'fail'
 read (42,*)d;if (any(d/=dm))print *,'fail'
 read (43,*)d;if (any(d/=dm))print *,'fail'
 call sx(spread(source=a1,dim=id(),ncopies=id()))
 call sx(spread(source=b1,dim=iz(id()),ncopies=iz(id())))
 call sx(spread(source=c1,dim=ip(id()+1),ncopies=ip(id()+1)))
 call sx(spread(source=a1(v3,v3),dim=id(),ncopies=id()))
 call sx(spread(source=b1(v3,v3),dim=iz(id()),ncopies=iz(id())))
 call sx(spread(source=c1(v3,v3),dim=ip(id()+1),ncopies=ip(id()+1)))
 call sx(spread(source=d1,dim=id(),ncopies=ip(id()+1)))
 call sx(spread(source=d1(v3,v3),dim=id(),ncopies=ip(id()+1)))
 end 

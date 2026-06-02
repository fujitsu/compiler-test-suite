integer,allocatable:: a(:)
integer,pointer:: b(:)
integer::v(3)=[3,1,2],c(5,5)
integer,target::tt(5)
allocate(a(5))
tt=[10,20,30,40,50]
b=>tt
a=[110,220,330,440,550]
c(3,v)=[250,50,150]

if(any(f( a(v) , b(v),c(3,v),v ) /= [3,1,2] ))print*,301

if (any(b/=[51,52,53,40,50])) print *,202,b
if (any(tt/=[51,52,53,40,50])) print *,203,tt
if (any(a/=[6,7,8,440,550])) print *,204,a
if (any(c(3,v)/=[103,101,102])) print *,205,c(3,v)

print *,'PASS'
contains
elemental impure function  f( d1,d2,d3,d4)
 integer,intent(inout)::d1
 integer,intent(out)::d2
 integer,volatile,intent(inout)::d3
 integer,intent(in)::d4
 integer::f
 select case (d4)
 case (1)
  if(d1 /= 10 .and. d3 /=50 )print*,101
 case (2)
  if(d1 /= 20 .and.  d3 /=150 )print*,102
 case (3)
  if(d1 /= 30 .and. d3 /=250 )print*,103
 end select

 d1=d4+5
 d2=d4+50
 d3=d4+100

 f=d4
end function
end



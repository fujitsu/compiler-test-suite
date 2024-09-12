implicit character(:,1)(a)
implicit character(kind=1,len=:)(b)
implicit character(:,kind=1)(d)
pointer :: a,b,d
allocatable :: aa,bb,dd
integer,parameter :: jjj = 10
integer,parameter :: kkk = 1
allocate(character(jjj,kind=kkk)::a)
allocate(character(jjj,kkk)::b)
allocate(character(kind=kkk,len=jjj)::d)
allocate(character(jjj,kind=kkk)::aa)
allocate(character(jjj,kkk)::bb)
allocate(character(kind=kkk,len=jjj)::dd)
if ( len(a) .ne. jjj ) print *,'ng'
if ( len(b) .ne. jjj ) print *,'ng'
if ( len(d) .ne. jjj ) print *,'ng'
if ( len(aa) .ne. jjj ) print *,'ng'
if ( len(bb) .ne. jjj ) print *,'ng'
if ( len(dd) .ne. jjj ) print *,'ng'
print *,'pass '
end

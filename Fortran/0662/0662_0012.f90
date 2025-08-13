call zz1
call zz2
call zz3
print *,'pass'
contains
subroutine zz1
integer*1 packa(2),packa3(2),packb1(2)
character*4 cha(10)
logical*1 chl1(10)
character*3 ada(3)
character*3 adb(3)
character*3  cca
character*1  inc(2),ind(2)
character*2  ina(2),inb(2)
logical*1 col1(3),col2(2,2)
integer*4 ca(2,3),cb(2,3)
type ty1
integer*4 tya
endtype ty1
type(ty1)::typ1(1,3)
type(ty1)::typ2(1,3)
integer*4 csa(3,3)
integer*4 dia(10,10),dib
integer*1 a(1,2,3,4,5,6,7),a1
integer lla(10,10)
integer*8 mea
integer*8 maxa
real*16 maxb(2,2)
real*16 numa,numb(10)
integer,pointer,dimension(:)::lli,lli1
integer,pointer,dimension(:)::llj,llj1
integer*4 rana, ranb(10),ranc
parameter(a1=bit_size(a))
parameter(dib=digits(1))
parameter(packa=2)
parameter(packa3=packa**packa) 
data maxb/1,2,3,4/
data csa/1,4,7,2,5,8,3,6,9/
data ca/1,2,3,4,5,6/
data cb/0,7,3,4,5,8/
packb1=2
ada='ab '
adb(1)='ab '
adb(2)='cd '
adb(3)='ef '
chl1=.true.
cha=' a b '
cca='abc'
ina='ab'
inb='cd'
inc='a'
ind='b'
col1(1)=.false.
col1(2)=.true.
col1(3)=.false.
col2(1,1)=.false.
col2(1,2)=.false.
col2(2,1)=.false.
col2(2,2)=.true.
typ1%tya =10
typ2=cshift(typ1,4,2)
mea=huge(mea)
maxa=1
allocate(lli(2),lli1(2))
allocate(llj(2),llj1(2))
lli=10
llj=100
nullify(lli)
if(size(pack(packa3,packa3.ne.(/4,4/))).ne.0) print *,'fail'
if(size(pack(packa3,packa3.ne.packb1**packb1)).ne.0) print *,'fail'
if(any(adjustr(ada)/=(/' ab',' ab',' ab'/))) print *,'fail' 
if(any(adjustr(adb)/=(/' ab',' cd',' ef'/))) print *,'fail'
if(len(adjustr(adb)).ne.3) print *,'fail'
if(adjustr(adb(1)//adb(2)//adb(3)).ne.' ab cd ef') print *,'fail'
if(any(adjustr(adb//adb)/=&
(/' ab ab',' cd cd',' ef ef'/))) print *,'fail'
if(adjustr(adb(3)).ne.' ef') print *,'fail'
if(any(len_trim(cha)/=spread(4,1,10))) print *,'fail'
if(any(index('abcde','b',chl1)/=spread(2,1,10))) print *,'fail'
if(any(verify('abcde','b',chl1)/=spread(5,1,10))) print *,'fail'
if(any(scan('abcde','b',chl1)/=spread(2,1,10))) print *,'fail'
if(cc(cca).ne.'abcabc') print *,'fail'
if(any(index(ina,inc//ind)/=(/1,1/))) print *,'fail'
if(any(index(ina//inb,inc//ind,.true.)/=(/1,1/))) print *,'fail'
if(any(verify(ina//inb,inc//ind)/=(/3,3/)))  print *,'fail'
if(count(col1).ne.1) print *,'fail'
if(any(count(col2,dim=2)/=(/0,1/))) print *,'fail'
if(any(count(ca.ne.cb,dim=1)/=(/2,0,1/))) print *,'fail'
if(any(count(ca.eq.cb,dim=1)/=(/0,2,1/))) print *,'fail'
if(any(count(ca.ne.cb,dim=2)/=(/1,2/))) print *,'fail'
if(any(count(ca.eq.cb,dim=2)/=(/2,1/))) print *,'fail'
if(any(cshift((/1,2,3,4,5,6/),shift=2)/=(/3,4,5,6,1,2/))) print *,'fail'
if(size(typ2).ne.3) print *,'fail'
if(any(shape(typ2)/=(/1,3/))) print *,'fail'
if(any(cshift(csa,shift=1,dim=1)/=cshift(csa,shift=1))) print *,'fail'
if(dib.ne.digits(dia)) print *,'fail'
call sub(a1)
if(a1.ne.8) print *,'fail'
if(lbound(lla,dim=2).ne.1) print *,'fail'
if(any(ubound(lla(10:10,10:10))/= (/1,1/))) print *,'fail'
if(merge(mea,mea,.true.).ne.huge(1_8)) print *,'fail'
if(any(maxval(maxb,maxa)/=(/2._16,4._16/))) print *,'fail'
if(any(minval(maxb,maxa)/=(/1._16,3._16/))) print *,'fail'
lli=>llj
if(any(lbound(lli)/=(/1/))) print *,'fail'
if(any(ubound(lli)/=(/2/))) print *,'fail'
if(size(lli).ne.2) print *,'fail'
if(any(shape(lli)/=(/2/))) print *,'fail'
if(any(lbound(lli)/=(/1/))) print *,'fail'
if(any(ubound(lli)/=(/2/))) print *,'fail'
if(size(lli).ne.2) print *,'fail'
if(any(shape(lli)/=(/2/))) print *,'fail'
lli1=lli
lli=>llj1
if(any(lbound(lli)/=(/1/))) print *,'fail'
if(any(ubound(lli)/=(/2/))) print *,'fail'
if(size(lli).ne.2) print *,'fail'
if(any(shape(lli)/=(/2/))) print *,'fail'
call random_seed(size=rana)
call random_seed
call random_seed(size=ranc)
call random_seed(put=(/1,2,3,4,5,6,7,8,9,0/))
call random_seed(get=ranb)
if(rana.ne.ranc)  print *,'fail'
if(ranb(1)/=1) print *,'fail'
call random_number(numa)
call random_number(numb)
if(aint(numa).ne.0._16) print *,'fail'
if(any(aint(numb)/=spread(0._16,1,10))) print *,'fail'
end subroutine
character*6 function cc(j)
character*3 j
cc = j//j
return 
end function
subroutine sub(x)
integer*1 x
if(x.ne.8_1) print *,'fail'
end subroutine
subroutine zz2
character*3,pointer::adi,adi1
character*3,target::adj,adj1
character*1,pointer::adz
character*1,target::adz1
allocate(adi,adi1,adz)
adi='ab '
adj='bc '
adz1='a'
if(adjustr(adi).ne.' ab') print *,'fail'
adi=>adj
if(adjustr(adi).ne.' bc') print *,'fail'
adi1=adi
if(adi1.ne.'bc ') print *,'fail'
adi=>adj1
adz=>adz1
if(len(adjustr(adi)).ne.3) print *,'fail'
if(ichar(adz).ne.iachar(adz)) print *,'fail'
if(bit_size(len(adi)).ne.32) print *,'fail'
if(bit_size(kind(adi)).ne.32) print *,'fail'
if(len(adjustr(adi)).ne.3) print *,'fail'
end subroutine
subroutine zz3
integer      hui(5), hui1(5)
integer*4 tra(2,3)
character*3 trch(2,2)
type typ1
character*3 tch
endtype
type(typ1)::type1(2,2)
type typ2
character*3 tchres
endtype
type(typ2)::type2(4)
real*4 tga(3,3),tgb(3,3)
character*1 poa(3,3)
data poa/'a','b','c','d','e','f','g','h','i'/
data tga/1,4,7,2,5,8,3,6,9/
data type1%tch/'abc','efg','hij','klm'/
data trch/'abc','efg','hij','klm'/
data type2%tchres/'abc','hij','efg','klm'/
data tra/1,2,3,4,5,6/
i=0 ; i1=0
tgb=transpose(tga)
call hchk(hui,hui1)
if(ceiling(1.0).ne.floor(1.0)) print *,'fail'
if(modulo(1.0,2.0d0).ne.real(modulo(1,2),8)) print *,'fail'
if(kind(digits(a)).ne.4) print *,'fail'
if(kind(epsilon(a1)).ne.4) print *,'fail'
if(kind(huge(a2)).ne.4) print *,'fail'
if(kind(maxexponent(a3)).ne.4) print *,'fail'
if(kind(minexponent(a4)).ne.4) print *,'fail'
if(kind(precision(a5)).ne.4) print *,'fail'
if(kind(radix(a6)).ne.4) print *,'fail'
if(kind(range(a7)).ne.4) print *,'fail'
if(kind(tiny(a8)).ne.4) print *,'fail'
if(any(transpose(tra)/=&
reshape((/1,3,5,2,4,6/),(/3,2/)))) print *,'fail'
if(any(transpose(trch)/= &
reshape((/'abc','hij','efg','klm'/),(/2,2/)))) print *,'fail'
if(size(transpose(type1)).ne.size(reshape(type2,(/2,2/)))) print *,'fail'
if(any(tgb/=reshape((/(real(iit),iit=1,9)/),(/3,3/)))) print *,'fail'
if(any(transpose(poa)/=reshape((/'a','d','g','b','e','h','c','f','i'/),&
(/3,3/)))) print *,'fail'
end subroutine
subroutine hchk(i,i1)
integer      i(*), i1(5)
integer*4    a
if(huge(a).ne.huge(i)) print *,'fail'
if(huge(i1).ne.huge(i)) print *,'fail'
end subroutine
end

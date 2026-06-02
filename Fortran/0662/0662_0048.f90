call zz1
call zz2
call zz3
print *,'pass'
contains
subroutine zz1
type ty1
integer*1 tyi1
endtype
type(ty1)::typ1
type aa
character  ch2(2,3)
end type aa
type bb
logical    l42(2,3)
character  ch2(2,3)
end type bb
type (aa) :: str_a
type (bb) :: str_b
character*5 cha1
logical*1 ll1
integer*4 mata(2,3),matb(3,2)
integer*4 ma(2,3)
integer*4  mb(2)
complex*16 mma(3,2)
complex*16 mmb(3)
integer*2 mmma(2)
integer*4 mmmb(2,2)
integer*4 mlb(1)
real*4    mmmc(2,2)
integer*4 maxla(3,4)
integer*4 loa(4)
integer*4 vaa(2,3)
integer*4 vala(2,2)
logical*1 valb(2,2)
integer*4 maxa(2,2,2)
integer*4 mina(3,4)
data mina/0,3,1,-5,4,5,8,-1,6,-3,2,-4/
data maxa/1,2,3,4,-5,-6,-7,-8/
data vala/1,2,3,4/
data vaa/1,2,3,4,5,6/
data loa/1,5,3,2/
data maxla/0,3,1,-5,4,5,8,-1,6,-3,2,-4/
data mma/1,2,3,2,3,4/
data ma /1,2,2,3,3,4/
ll1=.true.
cha1='abcde'
typ1%tyi1=1  
str_a%ch2 ='a'
str_b%ch2='b'
str_b%l42=.true.
mata(1,1)=1
mata(1,2)=2
mata(1,3)=3
mata(2,1)=2
mata(2,2)=3
mata(2,3)=4
matb(1,1)=1
matb(1,2)=2
matb(2,1)=3
matb(2,2)=2
matb(3,1)=3
matb(3,2)=4
mb=(/1,2/)
mmb=(/1,2,3/)
mmma=1
mmmb=2
mmmc=3
mlb=maxloc((/1,3,1,1,6/))
valb=.true.
if(merge(cha1,cha1,ll1).ne.'abcde') print *,'fail'
if(merge(cha1,cha1,.false.).ne.'abcde') print *,'fail'
if(merge(typ1%tyi1,typ1%tyi1,.true.).ne.1) print *,'fail'
if(all(merge(str_a%ch2, str_b%ch2, str_b%l42).eq.&
reshape((/'a','a','a','a','a','a'/),(/2,3/))).neqv..true.) print *,'fail'
if(all(matmul(mata,matb).eq.reshape((/16,23,18,26/),(/2,2/))).neqv.&
.true.) print *,'fail'
if(all(matmul(mb,ma).eq.(/5,8,11/)).neqv..true.) print *,'fail'
if(all(matmul(mb,ma).eq.matmul((/1,2/),ma)).neqv..true.) print *,'fail'
if(all(matmul(mmb,mma).eq.(/(14._8,0._8),(20._8,0._8)/)) &
.neqv..true.) print *,'fail'
if(all(matmul(mmmb,mmmc).eq.&
reshape((/12._4,12._4,12._4,12._4/),(/2,2/))).neqv..true.) print *,'fail'
if(all(matmul(mmma,mmmb).eq.(/4,4/)).neqv..true.) print *,'fail'
if(all(matmul(mmmb,mmma).eq.matmul(mmma,mmmb)).neqv..true.) print *,'fail'
if(mlb(1).ne.5) print *,'fail'
if(all(maxloc(maxla,mask=maxla.lt.6).eq.(/3,2/)).neqv..true.) print *,'fail'
if(all(maxloc(loa).eq.maxloc((/2,6,4,6/))).neqv..true.) print *,'fail'
if(maxval((/1,2,3/)).ne.3) print *,'fail'
if(all(maxval(vaa,dim=1).eq.(/2,4,6/)).neqv..true.) print *,'fail'
if(all(minval(vaa,dim=1).eq.(/1,3,5/)).neqv..true.) print *,'fail'
if(all(maxval(vaa,dim=2).eq.(/5,6/)).neqv..true.) print *,'fail'
if(all(minval(vaa,dim=2).eq.(/1,2/)).neqv..true.) print *,'fail'
if(maxval(vala,mask=valb).ne.4) print *,'fail'
if(all(maxval(vala,mask=valb,dim=1).eq.(/2,4/)).neqv..true.) print *,'fail'
if(maxval(maxa,mask=.true.).ne.4) print *,'fail'
if(maxval(maxa,mask=maxa.lt.0).ne.-5) print *,'fail'
if(all(maxval(maxa,3,mask=maxa.lt.0).eq.&
reshape((/-5,-6,-7,-8/),(/2,2/))).neqv..true.) print *,'fail'
if(all(minloc((/4,3,6,3/)).eq.(/2/)).neqv..true.) print *,'fail'
if(all(minloc(mina,mask=mina.gt.-4).eq.(/1,4/)).neqv..true.) print *,'fail'
if(modulo(a=8,p=5).ne.modulo(p=5,a=8)) print *,'fail'
end subroutine
subroutine zz2
integer*4 paa(2,3),pab(6)
integer*4 pa(3,3)
integer*2 pb(2)
integer*4 ppa(5)
real,pointer ::ppb(:)
pointer poc1
target poc
integer     poc1(:),poc(10)
data pa/0,9,0,0,0,0,0,0,7/
paa=reshape((/1,2,3,4,5,6/),(/2,3/))
n=10
allocate(ppb(1:n))
pab=(/1,2,3,4,5,6/)
poc=10
poc1=>poc
if(all(pack(paa,.true.,pab).eq.pab).neqv..true.) print *,'fail'
pb=pack(pa,mask=pa.ne.0)
if(all(pb.eq.(/9,7/)).neqv..true.) print *,'fail'
if(all(pack(pa,mask=pa.ne.0,vector=(/2,4,6,8,10,12/)).eq. &
(/9,7,6,8,10,12/)).neqv..true.) print *,'fail'
if(associated(poc1).neqv..true.) print *,'fail'
nullify(poc1) 
if(associated(poc1).neqv..false.) print *,'fail'
call sub(ppa)
end subroutine
subroutine sub(x,y)
integer*4,optional::x(5),y(5)
if(present(x).neqv..true.) print *,'fail'
end subroutine sub
subroutine zz3
real rax,ray(10)
integer*4 rra(1),rrb(1)
integer*4 reb(2)
integer*4 rrra(2,3),rrrb(2)
integer*2 i2(2,2)
integer*1 i1(2)
integer*2 i2i(3,3)
integer*4 i4(2)
character*0 chaa
data i2/1,2,3,4/
data i1/1,2/
data i2i/1,2,3,4,5,6,7,8,9/
data i4/1,2/
data reb/2,3/ 
rrb=1
rra=1
rrra=2
rrrb=1
call random_number(harvest=rax)
call random_number(ray)
if(all((/((/(i,j=1,3)/),i=1,3)/).eq.(/1,1,1,2,2,2,3,3,3/)).neqv.&
.true.) print *,'fail'
if(all(reshape(rra,rrb).eq.(/1/)).neqv..true.) print *,'fail'
if(all(reshape((/1,2,3,4,5,6/),reb).eq.&
reshape((/1,2,3,4,5,6/),(/2,3/))).neqv..true.) print *,'fail'
if(all(reshape((/1,2,3,4,5,6/),(/1,2/)).eq.&
reshape((/1,2/),(/1,2/))).neqv..true.) print *,'fail'
if(all(reshape(rrra,rrrb).eq.reshape((/2,2/),(/1,1/))).neqv.&
.true.) print *,'fail'
if(all(reshape(i2,i1).eq.reshape(i2,i1,i2i)).neqv..true.) print *,'fail'
if(all(reshape(i2,i1).eq.reshape(i2,i1,i2i,i4)).neqv..true.) print *,'fail'
if(repeat(chaa,10).ne.'') print *,'fail'
end subroutine
end

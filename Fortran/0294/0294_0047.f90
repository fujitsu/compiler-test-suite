integer,pointer :: sss01(:),sss02(:,:),sss03(:,:,:)
integer,target :: ttt(100,100)
integer,pointer :: lower01,lower02,lower03
integer,pointer :: upper01,upper02,upper03
integer,pointer :: tlower01,tlower02,tlower03
integer,pointer :: tupper01,tupper02,tupper03

ttt = reshape((/(i,i=1,10000)/),(/100,100/))
allocate(lower01,lower02,lower03)
allocate(upper01,upper02,upper03)
allocate(tlower01,tlower02,tlower03)
allocate(tupper01,tupper02,tupper03)

lower01 = 1
lower02 = 2
lower03 = 3
upper01 = 2
upper02 = 3
upper03 = 4
tlower01 = 20
tlower02 = 50
tupper01 = 50
tupper02 = 100

sss01(lower02:) => ttt(tlower01:tupper01,100)
sss02(lower02:,lower03:) => ttt(tlower01:tupper01,tlower02:tlower02+1)
print *,sss01
print *,lbound(sss01,1),ubound(sss01,1)
print *,sss02
print *,lbound(sss02,1),ubound(sss02,1)
print *,lbound(sss02,2),ubound(sss02,2)
sss01(lower01:upper01) => ttt(tlower01:tupper01,100)
sss02(lower01:upper01,lower02:upper02) => ttt(tlower01:tlower01,100)
sss03(lower01:upper01,lower02:upper02,lower03:upper03) => ttt(tlower01:tupper01,100)
print *,sss01
print *,lbound(sss01,1),ubound(sss01,1)
print *,sss02
print *,lbound(sss02,1),ubound(sss02,1)
print *,lbound(sss02,2),ubound(sss02,2)
print *,sss03
print *,lbound(sss03,1),ubound(sss03,1)
print *,lbound(sss03,2),ubound(sss03,2)
print *,lbound(sss03,3),ubound(sss03,3)
print *,'ok'
end

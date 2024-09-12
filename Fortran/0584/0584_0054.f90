integer,parameter ::a1=selected_real_kind (23,12)
integer,parameter ::a2=selected_real_kind (23,12122)
integer,parameter ::a3=selected_real_kind (2232,12)
integer,parameter ::a4=selected_real_kind (2232,12122)

integer,parameter ::a5=selected_real_kind (p=23,r=12)
integer,parameter ::a6=selected_real_kind (r=12,p=23)
integer,parameter ::a7=selected_real_kind (r=12122,p=23)
integer,parameter ::a8=selected_real_kind (r=12122,p=2232)
integer,parameter ::a9=selected_real_kind (r=12,p=2232)

integer,parameter ::a10=selected_real_kind (23,radix=2)
integer,parameter ::a11=selected_real_kind (p=23,radix=2)
integer,parameter ::a12=selected_real_kind (23,radix=3)
integer,parameter ::a13=selected_real_kind (p=2232,radix=2)
integer,parameter ::a14=selected_real_kind (p=2332,radix=3)
integer,parameter ::a15=selected_real_kind (p=2332,radix=3)
integer,parameter ::a16=selected_real_kind (radix=3,r=12122)

integer,parameter ::a17=selected_real_kind (r=12,radix=2)
integer,parameter ::a18=selected_real_kind (r=12,radix=3)
integer,parameter ::a19=selected_real_kind (r=12122,radix=2)
integer,parameter ::a20=selected_real_kind (r=2332,radix=3)
integer,parameter ::a21=selected_real_kind (radix=3,r=2332)
integer,parameter ::a22=selected_real_kind (radix=2,r=12)

integer ::res

res= selected_real_kind (23,12)
if(res /= a1) print*,"101",res,a1

res= selected_real_kind (23,12122)
if(res /= a2) print*,"102",res,a2

res=selected_real_kind (2232,12)
if(res /= a3) print*,"103",res,a3

res=selected_real_kind (2232,12122)
if(res /= a4) print*,"104",res,a4

res=selected_real_kind (p=23,r=12)
if(res /= a5) print*,"105",res,a5

res=selected_real_kind (r=12,p=23)
if(res /= a6) print*,"106",res,a6

res =selected_real_kind (r=12122,p=23)
if(res /= a7) print*,"107",res,a7

res= selected_real_kind (r=12122,p=2232)
if(res /= a8) print*,"108",res,a8

res= selected_real_kind (r=12,p=2232)
if(res /= a9) print*,"109",res,a9

res=selected_real_kind (23,radix=2)
if(res /= a10) print*,"110",res,a10

res=selected_real_kind (p=23,radix=2)
if(res /= a11) print*,"111",res,a11

res=selected_real_kind (23,radix=3)
if(res /= a12) print*,"112",res,a12

res=selected_real_kind (p=2232,radix=2)
if(res /= a13) print*,"113",res,a13

res=selected_real_kind (p=2332,radix=3)
if(res /= a14) print*,"114",res,a14

res=selected_real_kind (p=2332,radix=3)
if(res /= a15) print*,"115",res,a15

res=selected_real_kind (radix=3,r=12122)
if(res /= a16) print*,"116",res,a16

res=selected_real_kind (r=12,radix=2)
if(res /= a17) print*,"117",res,a17

res =selected_real_kind (r=12,radix=3)
if(res /= a18) print*,"118",res,a18

res=selected_real_kind (r=12122,radix=2)
if(res /= a19) print*,"119",res,a19

res =selected_real_kind (r=2332,radix=3)
if(res /= a20) print*,"120",res,a20

res =selected_real_kind (radix=3,r=2332)
if(res /= a21) print*,"121",res,a21

res =selected_real_kind (radix=2,r=12)
if(res /= a22) print*,"122",res,a22

print*,"pass"
end

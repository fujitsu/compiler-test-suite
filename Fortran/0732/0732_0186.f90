subroutine sub(kk)
INTEGER IU4V
data IU4V/1/,K1/1/,K2/2/
integer V1/1/,V2/2/,V3/3/,V4/4/,KK1/1/,KK2/2/,V5/5/,V6/6/
kk= size( (/ (/ ( (1, 2 ,I=1,1), 3 , 4 ,I2=IU4V,1 ) /), 5 /))
call x1((/ (/ ( (1, 2 ,I=1,1), 3 , 4 ,I2=IU4V,1 ) /), 5 /))
call x11( (/ (/ ( (1, 2 ,I=1,2), 3 , 4 ,I2=IU4V,1 ) /), 5 /))
call x2( (/ (/ ( (1, 2 ,I=1,2), 3 , 4 ,I2=IU4V,2 ) /), 5 /))
call x2( (/ (/ ( (1, 2 ,I=K1,2), 3 , 4 ,I2=IU4V,2 ) /), 5 /))
call x2( (/ (/ ( (V1, V2 ,I=K1,K2), V3 , V4 ,I2=KK1,KK2 ) /), V5 /))
call x3( (/ (/ ( (V1, V2 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) /), V6 /))
call x4( (/ (/ V5, V6 ,( V3, V4,(V1, V2 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) /), V6 /))
call x4( (/ (/ (V5, V6 ,( V3, V4,(V1, V2 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) ,I3=K1,1)/), V6 /))
call x5( (/ (/ (V5, V6 ,( V3, V4,(V1, V2 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) ,I3=K1,1),V5 /), V6 /))
call x5( (/ (/ (V5, V6 ,(/( V3, V4,(V1, V2 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) /),I3=K1,1),V5 /), V6 /))
call x5( (/ (/ (V5, V6 ,( V3, V4,(/(V1, V2 ,V3,I=K1,K2)/), V4 , V5 ,I2=KK1,KK2 ) ,I3=K1,1),V5 /), V6 /))
call x1((/  ( (1, 2 ,I=1,1), 3 , 4 ,I2=IU4V,1 ) , 5 /))
call x4( (/ V5, V6 ,( V3, V4,(V1, V2 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) , V6 /))
call x1((/ (/ ( (1+V3+V1-V4, 2+V3+V1-V4 ,I=1,1), 3+V3+V1-V4 , 4+V3+V1-V4 ,I2=IU4V,1 ) /), 5 /))
call x11( (/ (/ ( (1+V3+V1-V4, 2 ,I=1,2), 3+V3+V1-V4 , 4 ,I2=IU4V,1 ) /), 5 /))
call x2( (/ (/ ( (1+V3+V1-V4, 2 ,I=1,2), 3+V3+V1-V4 , 4 ,I2=IU4V,2 ) /), 5 /))
call x2( (/ (/ ( (1, 2+V3+V1-V4 ,I=K1,2), 3+V3+V1-V4 , 4 ,I2=IU4V,2 ) /), 5 /))
call x2( (/ (/ ( (V1+V3+V1-V4, V2 ,I=K1,K2), V3+V3+V1-V4 , V4 ,I2=KK1,KK2 ) /), V5 /))
call x3( (/ (/ ( (V1+V3+V1-V4, V2 ,V3,I=K1,K2), V4+V3+V1-V4 , V5 ,I2=KK1,KK2 ) /), V6 /))
call x4( (/ (/ V5, V6 ,( V3, V4,(V1+V3+V1-V4, V2 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) /), V6 /))
call x4( (/ (/ (V5, V6 ,( V3, V4,(V1, V2+V3+V1-V4 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) ,I3=K1,1)/), V6 /))
call x5( (/ (/ (V5, V6 ,( V3+V3+V1-V4, V4,(V1, V2 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) ,I3=K1,1),V5 /), V6 /))
call x5( (/ (/ (V5, V6 ,(/( V3, V4,(V1+V3+V1-V4, V2 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) /),I3=K1,1),V5 /), V6 /))
call x5( (/ (/ (V5, V6 ,( V3+V3+V1-V4, V4,(/(V1, V2 ,V3,I=K1,K2)/), V4 , V5 ,I2=KK1,KK2 ) ,I3=K1,1),V5 /), V6 /))
call x1((/  ( (1, 2+V3+V1-V4 ,I=1,1), 3 , 4 ,I2=IU4V,1 ) , 5 /))
call x4( (/ V5, V6+V3+V1-V4 ,( V3, V4,(V1, V2 ,V3,I=K1,K2), V4 , V5 ,I2=KK1,KK2 ) , V6 /))
contains
subroutine x1(r)
integer r(:)
if (size(r)/=5)write(6,*) "NG" 
if (any(r(:5)/=(/1,2,3,4,5/)))write(6,*) "NG"
end subroutine
subroutine x11(r)
integer r(:)
if (size(r)/=7)write(6,*) "NG" 
if (any(r(:7)/=(/1,2,1,2,3,4,5/)))write(6,*) "NG"
end subroutine
subroutine x2(r)
integer r(:)
if (size(r)/=13)write(6,*) "NG" 
if (any(r(:13)/=(/1,2,1,2,3,4,1,2,1,2,3,4,5/)))write(6,*) "NG"
end subroutine
subroutine x3(r)
integer r(:)
if (size(r)/=17)write(6,*) "NG" 
if (any(r(:17)/=(/1,2,3,1,2,3,4,5,1,2,3,1,2,3,4,5,6/)))write(6,*) "NG"
end subroutine
subroutine x4(r)
integer r(:)
if (size(r)/=23)write(6,*) "NG" 
if(any(r/=(/5,6,3,4,1,2,3,1,2,3,4,5,3,4,1,2,3,1,2,3,4,5,6/)))write(6,*) "NG"
end subroutine
subroutine x5(r)
integer r(:)
if (size(r)/=24)write(6,*) "NG" 
if(any(r/=(/5,6,3,4,1,2,3,1,2,3,4,5,3,4,1,2,3,1,2,3,4,5,5,6/)))write(6,*) "NG"
end subroutine
END
call sub(kk)
if (kk/=5)write(6,*) "NG"
print *,'pass'
end

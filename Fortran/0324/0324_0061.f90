pointer (ip,ia)
integer ia(10),ib(10)
pointer (jp,ja)
integer ja(10,10),jb(10,10)
ib=1
ip=loc(ib)
jb=1
jp=loc(jb)
call inline01(ip,jp)
if (ia(3).ne.3) print *,'ng_01' 
if (ia(7).ne.7) print *,'ng_02' 
if (ja(2,3).ne.6) print *,'ng_03' 
if (ja(5,6).ne.30) print *,'ng_04' 
ib=1;jb=1
call inline02(ip,jp)
if (ia(3).ne.3) print *,'ng_05' 
if (ia(7).ne.7) print *,'ng_06' 
if (ja(2,3).ne.6) print *,'ng_07' 
if (ja(5,6).ne.30) print *,'ng_08' 
ib=1;jb=1
call inline03(ip,jp,10)
if (ia(3).ne.3) print *,'ng_09' 
if (ia(7).ne.7) print *,'ng_10' 
if (ja(2,3).ne.6) print *,'ng_11' 
if (ja(5,6).ne.30) print *,'ng_12' 
ib=1;jb=1
call inline04(ip,jp)
if (ia(3).ne.3) print *,'ng_13' 
if (ia(7).ne.7) print *,'ng_14' 
if (ja(2,3).ne.6) print *,'ng_15' 
if (ja(5,6).ne.30) print *,'ng_16' 
ib=1;jb=1
call inline05(ip,jp)
if (ia(3).ne.3) print *,'ng_17' 
if (ia(7).ne.7) print *,'ng_18' 
if (ja(2,3).ne.6) print *,'ng_19' 
if (ja(5,6).ne.30) print *,'ng_20' 
ib=1;jb=1
call inline06(ip,jp,10)
if (ia(3).ne.3) print *,'ng_21' 
if (ia(7).ne.7) print *,'ng_22' 
if (ja(2,3).ne.6) print *,'ng_23' 
if (ja(5,6).ne.30) print *,'ng_24' 
print *,'pass'
end

 subroutine inline01(ip,jp)
 pointer (ip,ia)
 integer ia(10)
 pointer (jp,ja)
 integer ja(10,10)
 do i=1,10
   ia(i)=i
   do j=1,10
     ja(i,j)=i*j
   end do
 end do
 end subroutine

 subroutine inline02(ip,jp)
 pointer (ip,ia)
 integer ia(*)
 pointer (jp,ja)
 integer ja(10,*)
 do i=1,10
   ia(i)=i
   do j=1,10
     ja(i,j)=i*j
   end do
 end do
 end subroutine

 subroutine inline03(ip,jp,n)
 pointer (ip,ia)
 integer ia(n)
 pointer (jp,ja)
 integer ja(n,*)
 do i=1,10
   ia(i)=i
   do j=1,10
     ja(i,j)=i*j
   end do
 end do
 end subroutine


 subroutine inline04(ip,jp)
 pointer (ip,ia)
 integer ia(10)
 pointer (jp,ja)
 integer ja(10,10)
 call inline04_1(ip,jp)
 end subroutine
 subroutine inline04_1(ip,jp)
 pointer (ip,ia)
 integer ia(10)
 pointer (jp,ja)
 integer ja(10,10)
 do i=1,10
   ia(i)=i
   do j=1,10
     ja(i,j)=i*j
   end do
 end do
 end subroutine

 subroutine inline05(ip,jp)
 pointer (ip,ia)
 integer ia(*)
 pointer (jp,ja)
 integer ja(10,*)
 call inline05_1(ip,jp)
 end subroutine
 subroutine inline05_1(ip,jp)
 pointer (ip,ia)
 integer ia(*)
 pointer (jp,ja)
 integer ja(10,*)
 do i=1,10
   ia(i)=i
   do j=1,10
     ja(i,j)=i*j
   end do
 end do
 end subroutine

 subroutine inline06(ip,jp,n)
 pointer (ip,ia)
 integer ia(n)
 pointer (jp,ja)
 integer ja(n,*)
 call inline06_1(ip,jp,n)
 end subroutine
 subroutine inline06_1(ip,jp,n)
 pointer (ip,ia)
 integer ia(n)
 pointer (jp,ja)
 integer ja(n,*)
 do i=1,10
   ia(i)=i
   do j=1,10
     ja(i,j)=i*j
   end do
 end do
 end subroutine


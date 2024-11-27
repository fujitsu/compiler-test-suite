 call s1
 print *,'pass'
 end
 subroutine s1
     integer kk(-1:50)
     integer mm(-50:50)
     assign 103 to i
     goto i,(103)
999  write(6,*) "NG"
104  format(5H12345)
103  assign 104 to i
     write(1,i) 
     rewind 1
     read(1,'(i5)')j
     if (j/=12345)write(6,*) "NG"
     call s11(*201,*202,0)
     goto 210
201  write(6,*) "NG"
202  write(6,*) "NG"
210  call s11(*211,*212,1)
     write(6,*) "NG"
212  write(6,*) "NG"
211  call s11(*221,*222,2)
     write(6,*) "NG"
221  write(6,*) "NG"
222  call s11(*231,*232,3)
     goto 240
231  write(6,*) "NG"
232  write(6,*) "NG"
240  call s11(*241,*242,-1)
     goto 250
241  write(6,*) "NG"
242  write(6,*) "NG"
250  write(11,*,err=251) 1
     rewind 11
     read (11,*,end=252,err=253) j
     if (j/=1)write(6,*) "NG"
     goto 260
251  write(6,*) "NG"
252  write(6,*) "NG"
253  write(6,*) "NG"
260  write(2,'(3h678)')
     rewind 2
     read (2,'(i3)',advance='NO',end=261,err=262,eor=263) j
     if (j/=678)write(6,*) "NG"
     goto 270
261  write(6,*) "NG"
262  write(6,*) "NG"
263  write(6,*) "NG"
270  read (2,'(i3)',advance='NO',end=271,err=272,eor=273) j
     write(6,*) "NG"
271  write(6,*) "NG"
272  write(6,*) "NG"
273  kk=0
     do kkk=-1,50
     select case(kkk)
       case (11,12,13,14,15,16)
          kk(kkk)=1
       case (60)
          kk(1)=-1
     end select
     end do
     if (any(kk/=(/(0,n=-1,10),1,1,1,1,1,1,(0,n=17,50)/)))write(6,*) "NG"
     kk=0
     do kkk=-1,50
     select case(kkk)
       case (1,2,3,4,5,6)
          kk(kkk)=1
       case (60)
          kk(1)=-1
     end select
     end do
     if (any(kk/=(/(0,n=-1,0),(1,n=1,6),(0,n=7,50)/)))write(6,*) "NG"
     kk=0
     do kkk=-1,50
     select case(kkk)
       case (0,1,2,3,4,5,6)
          kk(kkk)=1
       case (60)
          kk(1)=-1
     end select
     end do
     if (any(kk/=(/(0,n=-1,-1),(1,n=0,6),(0,n=7,50)/)))write(6,*) "NG"
     kk=0
     do kkk=-1,50
     select case(kkk)
       case (-1,0,1,2,3,4,5,6)
          kk(kkk)=1
       case (60)
          kk(1)=-1
     end select
     end do
     if (any(kk/=(/(1,n=-1,-1),(1,n=0,6),(0,n=7,50)/)))write(6,*) "NG"
     mm=0
     do mmm=-50,50
     select case(mmm)
       case (11,12,13,14,15,16)
          mm(mmm)=1
       case (-11,-12,-13,-14,-15,-16)
          mm(mmm)=1
       case (60)
          mm(1)=-1
     end select
     end do
     if (any(mm/=(/(0,n=-50,-17),(1,n=-16,-11),(0,n=-10,10),1,1,1,1,1,1,(0,n=17,50)/)))write(6,*) "NG"
     mm=0
     do mmm=-50,50
     select case(mmm)
       case (1,2,3,4,5,6)
          mm(mmm)=1
       case (-1,-2,-3,-4,-5,-6)
          mm(mmm)=1
       case (60)
          mm(1)=-1
     end select
     end do
     if (any(mm/=(/(0,n=-50,-7),(1,n=-6,-1),(0,n=-0,0),1,1,1,1,1,1,(0,n=7,50)/)))write(6,*) "NG"
     mm=0
     do mmm=-50,50
     select case(mmm)
       case (0,1,2,3,4,5,6)
          mm(mmm)=1
       case (-1,-2,-3,-4,-5,-6)
          mm(mmm)=1
       case (60)
          mm(1)=-1
     end select
     end do
     if (any(mm/=(/(0,n=-50,-7),(1,n=-6,-1),(1,n=-0,0),1,1,1,1,1,1,(0,n=7,50)/)))write(6,*) "NG"
     mm=0
     do mmm=-50,50
     select case(mmm)
       case (-3,-4,-5,-6)
          mm(mmm)=1
       case (-1,0,1,2,3,4,5,6)
          mm(mmm)=1
       case (60)
          mm(1)=-1
     end select
     end do
     if (any(mm/=(/(0,n=-50,-7),(1,n=-6,-3),(0,n=-2,-2),1,1,1,1,1,1,1,1,(0,n=7,50)/)))write(6,*) "NG"
     j=1
     goto (501),j
801  write(6,*) "NG"
501  if (j/=1)write(6,*) "NG"
     j=0
     goto (502),j
     if (j/=0) write(6,*) "NG"
     goto 510
502  write(6,*) "NG"
510  j=-1
     goto (503),j
     if (j/=-1) write(6,*) "NG"
     j=2
     goto (504),j
     if (j/=2) write(6,*) "NG"
     goto 530
503  write(6,*) "NG"
504  write(6,*) "NG"
530  end
 subroutine s11(*,*,i)
 return i
 end

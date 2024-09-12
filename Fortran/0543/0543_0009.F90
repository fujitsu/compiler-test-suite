#define AA  BB()         ! 1),2),3),4)
#define BB() 1          ! 5),6),7),8)
  i= AA                  ! 9)
if (i.ne.1) then
 print *,'ng'
else
 print *,'pass'
endif
end

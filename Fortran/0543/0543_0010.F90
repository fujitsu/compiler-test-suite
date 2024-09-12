#define AA  BB(CC)
#define BB(CC) 1
  i= AA 
if (i.ne.1) then
 print *,'ng'
else
 print *,'pass'
endif
end

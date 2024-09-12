print *,'pass'
end

subroutine sub01()
character*10 cha*10,chb(10)
character*10 chc*10,chd(10),che(10)
data (cha(i:i) ,i=1,10) /10*'a'/
data (chb(1)(i:i) ,i=1,10) /10*'a'/
data (che(i) ,i=1,10) /10*'a'/ 
data chc(1:1)  /'a'/      
data chd(1)(1:1) /'a'/  
type ty1
  character*4 cha
  character*4 chb(10)
  character*4 chc(10)
end type
type (ty1) :: str(10)
data (str(i)%cha(1:1),i=1,10) /10*'a'/
data (str(i)%chb(1)(1:1),i=1,10) /10*'a'/
data (str(i)%chc(i),i=1,10) /10*'a'/ 
print *,str,cha,chb,chc,chd,che
end

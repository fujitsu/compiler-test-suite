        1 integer :: num(5)=[1,2,3,4,5]
        2 integer::i=1
        3 call sub(num(1:5:i))
        4 if(any(num/= [11,12,13,14,15]))print*,"101",num
        5 print*,"pass"
        6 contains
        8 subroutine sub(dmy)
        9   integer::dmy(5)
       10   if(loc(dmy).ne.loc(num))print*,"102", loc(dmy), loc(num)
       11   dmy = dmy + 10
       12 end subroutine
          end

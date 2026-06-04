module m 
    class(*),allocatable :: cptr(:)
    class(*),allocatable :: cptr1(:)
    class(*),allocatable :: cptr2(:)
    class(*),allocatable :: cptr3(:)
    character(len=2)::ch
contains
 subroutine sub()
  allocate(integer(kind=4)::cptr(2))
  allocate(integer(kind=8)::cptr1(2))
  allocate(character(len=2)::cptr2(2))
  allocate(real(kind=4)::cptr3(2))
  select type(A=>cptr)
   type is(integer(kind=4))
        A(1)=10
     select type(A=>cptr1)
       type is(integer(kind=4))
           A(1)=31
          print*,"121"
       type is(integer(kind=8))
           A(1)=30
       select type(A=>cptr1)
         type is(integer(kind=4))
           print*,"092"
         type is(integer(kind=8))
           if(A(1).ne.30)print*,"192"
             A(1)=31
        end select
       select type(A=>cptr3)
              type is(real(kind=8))
                A(1) =41
                print*,"131"
              type is(real(kind=4))
               A(1) =44
              select type(A=>cptr2)
                type is(integer(kind=4))
                  print*,"901"
               type is(character(len=*))
                   A(1)="AA"
                  ch =A(1)
             end select
             if(A(1).ne.44)print*,"101"
       end select
             if(A(1).ne.31)print*,"111"
      end select
             if(A(1).ne.10)print*,"131"
    end select
  if(ch.ne."AA")print*,"110"
 end 
 end
use m
call sub
 print*,"PASS"
end

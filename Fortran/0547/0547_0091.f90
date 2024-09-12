    subroutine s1
    character(8)            :: text(5,10)

    text=''
    text(1,5)(2:2)='w'
    text(3,1)(2:2)='w'
    text(1,1)(5:5)='w'
    n10=10
    n5=5
    n3=3

    forall (k1=2:n10, text(1,k1)(2:2) == ac(1)) 
      text(1,k1)(3:3)='y'
      forall (k2=2:n5 , text(k2,1)(2:2) == ac(1)) 
        text(k2,1)(3:3)='z'
        forall (k3=n3:8 , text(1,1)(k3:k3) == ac(1)) 
          text(2,2)(k3:k3)='q'
        end forall
      end forall
    end forall

    do k1=1,5
    do k2=1,10
    do k3=1,8
      
       if      (k1==1 .and. k2==5 .and. k3==2) then
         if (text(k1,k2)(k3:k3)/='w') print *,101
       else if (k1==3 .and. k2==1 .and. k3==2) then
         if (text(k1,k2)(k3:k3)/='w') print *,102
       else if (k1==1 .and. k2==1 .and. k3==5) then
         if (text(k1,k2)(k3:k3)/='w') print *,103
       else if (k1==1 .and. k2==5 .and. k3==3) then
         if (text(k1,k2)(k3:k3)/='y') print *,111
       else if (k1==3 .and. k2==1 .and. k3==3) then
         if (text(k1,k2)(k3:k3)/='z') print *,112
       else if (k1==2 .and. k2==2 .and. k3==5) then
         if (text(k1,k2)(k3:k3)/='q') print *,113
       else 
         if (text(k1,k2)(k3:k3)/='') print *,200,k1,k2,k3
       endif
    end do
    end do
    end do

    contains
     pure function ac(kk)
       character*(kk) ac
       intent(in) ::kk
       ac='w'
     END FUNCTION
    end
    call s1
    print *,'pass'
    end

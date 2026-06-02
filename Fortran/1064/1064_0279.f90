      1 module mod1
        2 type ty10(ii)
        3 integer,kind::ii=3
        4 integer :: array(ii)
        5 end type
        6 end
        8 module mod
        9 contains
       10 subroutine sub2(ca)
       11   use mod1
       12   TYPE(ty10(90)) ::ca
       13   end subroutine
       14   end
        use mod
        use mod1
        TYPE(ty10(90)) ::ca
print *,'pass'
end

1 subroutine sub(d1)
        2 interface
        3 function f1()
        4 integer :: f1
        5 end
        6 function f2(d1)
        7 real :: f2,d1
        8 end
        9 end interface
       11 procedure(f2) :: d1
       12 procedure(f1),pointer :: prc
       14 interface gnr
       15 procedure :: prc,d1
       16 end interface
end
print *,'pass'
       17 end

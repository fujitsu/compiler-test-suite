program pro
logical(kind=1), parameter ::arr1(6)= [.TRUE.,.FALSE.,.TRUE.,.FALSE.,.FALSE.,.TRUE.]
logical(kind=2), parameter ::arr2(6)= [.TRUE.,.FALSE.,.TRUE.,.FALSE.,.FALSE.,.TRUE.]
logical(kind=4), parameter ::arr3(6)= [.TRUE.,.FALSE.,.TRUE.,.FALSE.,.FALSE.,.TRUE.]
logical(kind=8), parameter ::arr4(6)= [.TRUE.,.FALSE.,.TRUE.,.FALSE.,.FALSE.,.TRUE.]

integer(kind=1), parameter :: arr5(4)= [2,6,4,6]
integer(kind=2), parameter :: arr6(4)= [2,6,4,6]
integer(kind=4), parameter :: arr7(4)= [2,6,4,6]
integer(kind=8), parameter :: arr(4)= [2,6,4,6]


real(kind=4), parameter :: arr8(4)=[2.0,6.0,4.0,6.0]
real(kind=8), parameter :: arr9(4)=[2.0,6.0,4.0,6.0]
real(kind=16), parameter :: arr10(4)=[2.0,6.0,4.0,6.0]
       

complex(kind=4), parameter :: arr11(7) = [(3,3),(65,65),(12,0),(95,95),(35,35),(45,45),(89,89)]
complex(kind=8), parameter :: arr12(7) = [(3,3),(65,65),(12,0),(95,95),(35,35),(45,45),(89,89)]
complex(kind=16), parameter :: arr13(7) = [(3,3),(65,65),(12,0),(95,95),(35,35),(45,45),(89,89)]

        integer, parameter :: res01(1) = findloc(arr1,VALUE = .FALSE.,BACK =.TRUE.)
        integer, parameter :: res02(1) = findloc(arr2,VALUE = .FALSE.,BACK =.TRUE.)
        integer, parameter :: res03(1) = findloc(arr3,VALUE = .FALSE.,BACK =.TRUE.)
        integer, parameter :: res04(1) = findloc(arr4,VALUE = .FALSE.,BACK =.TRUE.)
integer, parameter :: res11(1)=FINDLOC(arr5, VALUE=6_1)
integer, parameter :: res12(1)=FINDLOC(arr6, VALUE=6_2)
integer, parameter :: res13(1)=FINDLOC(arr7, VALUE=6_4)
integer, parameter :: res14(1)=FINDLOC(arr, VALUE=6_8)
      integer, parameter :: res21(1)=FINDLOC(arr8, VALUE=6.0_4, BACK = .TRUE.)
      integer, parameter :: res22(1)=FINDLOC(arr9, VALUE=6.0_8, BACK = .TRUE.)
      integer, parameter :: res23(1)=FINDLOC(arr10, VALUE=6.0_16, BACK = .TRUE.)
integer, parameter :: res31(1)=FINDLOC(arr11, VALUE=(65,65))
integer, parameter :: res32(1)=FINDLOC(arr12, VALUE=(65,65))
integer, parameter :: res33(1)=FINDLOC(arr13, VALUE=(65,65))
 if(res01(1)/=5) print *, 101
 if(res02(1)/=5) print *, 102
 if(res03(1)/=5) print *, 103
 if(res04(1)/=5) print *, 104
 if(res11(1)/=2) print *, 105
 if(res12(1)/=2) print *, 106
 if(res13(1)/=2) print *, 107
 if(res14(1)/=2) print *, 108
 if(res21(1)/=4) print *, 109
 if(res22(1)/=4) print *, 110
 if(res23(1)/=4) print *, 111
 if(res31(1)/=2) print *, 112
 if(res32(1)/=2) print *, 113
 if(res33(1)/=2) print *, 114
        print *, "pass"
end        


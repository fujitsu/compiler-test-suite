
MODULE mod1
    IMPLICIT NONE
    integer,save::counter=0
    TYPE ty0
    INTEGER :: ii = 10
    CONTAINS
         FINAL::dest
    END TYPE

CONTAINS
    SUBROUTINE dest(dmy)
      type(ty0) :: dmy
      counter=counter+1
      PRINT*,'call of dest', dmy,counter
    END SUBROUTINE

    subroutine ss
      print*,'within subroutine'
      block
        type(ty0) :: obj1
        print*,obj1
      end block
a: block
        type(ty0) :: obj1
        obj1%ii=30
        print*,obj1
 a1: block
        type(ty0) :: obj1
        obj1%ii=40
        print*,obj1
 end block a1

 a2: block
        type(ty0) :: obj1
        obj1%ii=50
        print*,obj1
  a21: block
        type(ty0) :: obj1
        obj1%ii=60
        print*,obj1
  end block a21

  a22: block
        type(ty0) :: obj1
        obj1%ii=70
        print*,obj1
  end block a22
 end block a2

 a3: block
        type(ty0) :: obj1
        obj1%ii=80
        print*,obj1
 end block a3
end block a

b: block
        type(ty0) :: obj1
        obj1%ii=90
        print*,obj1
end block b

c: block
        type(ty0) :: obj1
        obj1%ii=100
        print*,obj1
 c1: block
        type(ty0) :: obj1
        obj1%ii=110
        print*,obj1
  c11: block
        type(ty0) :: obj1
        obj1%ii=120
        print*,obj1
  end block c11

  c12: block
        type(ty0) :: obj1
        obj1%ii=130
        print*,obj1
  end block c12
 end block c1
end block c

d: block
        type(ty0) :: obj1
        obj1%ii=140
        print*,obj1
end block d
      print*,'after block'
    end subroutine
END MODULE

use mod1
call ss
if(counter/=13) print*,101,counter
if(counter==13) print*,'pass'
End


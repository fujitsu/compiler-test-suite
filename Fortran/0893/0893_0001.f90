PROGRAM main
  TYPE ty(k,l)
   INTEGER,KIND::k
   INTEGER,LEN ::l
  END TYPE
  TYPE,EXTENDS(ty)::ty0(l1,k1)
   INTEGER,KIND::k1
   INTEGER,LEN ::l1
  END TYPE
  TYPE ty1(k,l)
   INTEGER,KIND::k
   INTEGER,LEN ::l
  END TYPE
  TYPE,EXTENDS(ty1)::ty2(k1,l1) 
   INTEGER,KIND::k1
   INTEGER,LEN ::l1
  END TYPE
 TYPE,EXTENDS(ty2)::ty3
   INTEGER :: ii
 END TYPE
 TYPE,EXTENDS(ty3)::ty4(k1,l1)
  INTEGER,KIND::k1
  INTEGER,LEN ::l1
 END TYPE
END PROGRAM
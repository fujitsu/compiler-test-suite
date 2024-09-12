  type ty
         integer :: ii
         integer,allocatable :: alc
         end type
  type yy
         integer :: ii
         integer :: alc
         end type
        
         type(ty),allocatable :: obj1,obj2
         type(yy),allocatable :: tbj1,tbj2
         allocate(obj1,obj2)
  obj2=ty(1)
         obj1 = obj2
         allocate(tbj1,tbj2)
  tbj2=yy(1,2)
         tbj1 = tbj2
print *,'pass'
         end


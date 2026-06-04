    MODULE mod4
       IMPLICIT NONE
       TYPE ty1
         INTEGER::i1=0
         CONTAINS
         PROCEDURE,NOPASS::ty1com_tbp2=>mod4_fun3
       END TYPE
      type(ty1) :: main_ty1obj
      CONTAINS
      FUNCTION mod4_fun3()
        CLASS(*),ALLOCATABLE::mod4_fun3(:)
        allocate(integer::mod4_fun3(2))
select type (p=> mod4_fun3)
  type is(integer)
      mod4_fun3=[1,2]
end select
      END FUNCTION
     END MODULE
     USE mod4

      CLASS(*),ALLOCATABLE::main_unlimloc(:)

      ALLOCATE(main_unlimloc,SOURCE=main_ty1obj%ty1com_tbp2())
k=0
select type (p=> main_unlimloc)
  type is(integer)
      k=1
    if (any(p/=[1,2])) print *,301
end select
if (k/=1) print *,901
        print *,'pass'
      END 

PROGRAM main
USE ISO_C_BINDING
 
TYPE,BIND(C) :: t_bind
 INTEGER(C_INT)::number
END TYPE
 
TYPE stc
 TYPE(t_bind), POINTER :: cmp
END TYPE
 
CLASS (*),POINTER :: element
TYPE(stc)::obj
obj=stc(element)
 
print*,sizeof(obj),'pass'
END

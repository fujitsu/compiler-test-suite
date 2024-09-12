MODULE M
 TYPE T3
     INTEGER,pointer::A
 END TYPE T3
 TYPE T4
     INTEGER::A
 END TYPE T4
end

subroutine s1
USE M
TYPE(T3)::OBJ_T3
TYPE(T4)::OBJ_T4
inquire( iolength=k4) OBJ_T4
if (k4/=4) print *,201
end
call s1
print *,'pass'
END 


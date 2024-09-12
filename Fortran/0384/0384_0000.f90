      type typ
        sequence
        procedure(type(typ)),pointer,nopass :: prc
       end type
       type typ00
        sequence
        procedure(type(typ00)),pointer,nopass :: prc0
        procedure(type(typ)),pointer,nopass :: prc02
       end type

       type (typ00) :: t1
print *,"pass"
end

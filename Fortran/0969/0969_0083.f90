intrinsic :: CCOS
intrinsic :: CEXP
intrinsic :: CLOG
intrinsic :: CONJG
intrinsic :: CSIN
intrinsic :: CSQRT


call sub(CCOS)
call sub(CEXP)
call sub(CLOG)
call sub(CONJG)
call sub(CSIN)
call sub(CSQRT)

end

subroutine sub(a)
 procedure() :: a
end subroutine

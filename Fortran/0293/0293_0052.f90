subroutine s1
type :: str
character(5),pointer :: ppp(:,:)
character(:),pointer :: ttt(:,:)
end type
character(5),pointer :: ppo(:,:)
character(5),pointer :: ppp(:,:)
character(5),pointer :: ppr(:,:)
type(str) :: sss
allocate(ppo(2,3))
ppo='12345'
allocate(ppr(2,3))
ppr='12345'
allocate(character(10)::sss%ttt(3,3))
sss%ttt = reshape((/"1234567890","2345678901", &
                    "3456789012","4567890123", &
                    "5678901234","6789012345", &
                    "7890123456","8901234567", &
                    "8901234567"/),(/3,3/))
ppp => sss%ttt
sss%ppp => sss%ttt
if (any(ppo/='12345'))print *,101
if (any(ppr/='12345'))print *,102
if (any(sss%ttt /= reshape((/"1234567890","2345678901", &
                    "3456789012","4567890123", &
                    "5678901234","6789012345", &
                    "7890123456","8901234567", &
                    "8901234567"/),(/3,3/)) &
                                      ))print *,103
if (any(sss%ppp /= reshape((/"12345","23456", &
                    "34567","45678", &
                    "56789","67890", &
                    "78901","89012", &
                    "89012"/),(/3,3/))))print *,104
if (any(ppp /= reshape((/"12345","23456", &
                    "34567","45678", &
                    "56789","67890", &
                    "78901","89012", &
                    "89012"/),(/3,3/))))print *,105
end
call s1
print *,'pass'
end

 INTEGER(kind=8) ::KUIQ1F(4)
 KUIQ1F=(/(/28_8,12_8,16_8/),8_8/)
if (any(KUIQ1F/=(/28,12,16,8/)))print *,'error-1'
 KUIQ1F=(/(/28_8,12_8,16_8/),8_8/)
if (any(KUIQ1F/=(/28,12,16,8/)))print *,'error-2'
print *,'pass'
 END

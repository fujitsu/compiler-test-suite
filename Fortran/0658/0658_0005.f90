 type ty1
   integer :: arr(10)
 end type
 type (ty1) :: str1,str2
 str1 = ty1((/(ii,ii=1,10)/)**2)
 str2%arr = (/(ii,ii=1,10)/)**2
 do i=1,10
    if (str2%arr(i).ne.str1%arr(i)) print *,'ERR'
 end do
 kk=2
 str2%arr = (/(ii,ii=1,10)/)**kk
 do i=1,10
    if (str2%arr(i).ne.str1%arr(i)) print *,'ERR'
 end do
 str1 = ty1((/(ii,ii=1,10)/)**kk)
 do i=1,10
    if (str2%arr(i).ne.str1%arr(i)) print *,'ERR'
 end do
 k0=0
 str1 = ty1((/(ii+k0,ii=1,10)/)**2)
 do i=1,10
    if (str2%arr(i).ne.str1%arr(i)) print *,'ERR'
 end do
 str1 = ty1((/(k0+ii,ii=1,10)/)**2)
 do i=1,10
    if (str2%arr(i).ne.str1%arr(i)) print *,'ERR'
 end do
 str1 = ty1((/(ii,ii=1,10)/)**(/(2,ii=1,10)/))
 do i=1,10
    if (str2%arr(i).ne.str1%arr(i)) print *,'ERR'
 end do
 str1 = ty1((/(3000000000_8*ii,ii=1,10)/)**200)
 str1 = ty1((/(3000000000_8*ii,ii=1,10)/)**20)
 str1 = ty1((/(3000000000_8*ii,ii=1,10)/)**2)
 str1 = ty1((/(3000000000_8*ii,ii=1,10)/)**200)
 str1 = ty1((/(3000000000_8*ii,ii=1,10)/)*200)
 str1 = ty1((/(3000000000_8*ii,ii=1,10)/)/200)
 str1 = ty1((/(3000000000_8*ii,ii=1,10)/)+200)
 str1 = ty1((/(300000000_8*ii,ii=1,10)/)**200)
 str1 = ty1((/(30000000_8*ii,ii=1,10)/)**200)
 str1 = ty1((/(3000000_8*ii,ii=1,10)/)**200)
 str1 = ty1((/(3000001000_8*ii,ii=1,10)/)**200)
 str1 = ty1((/(3000002000_8*ii,ii=1,10)/)**200)
 str1 = ty1((/(3000003000_8*ii,ii=1,10)/)**200)
 str1 = ty1((/(3000004000_8*ii,ii=1,10)/)**200)
 str1 = ty1((/(3000005000_8*ii,ii=1,10)/)**200)
 print *,'pass'
 end

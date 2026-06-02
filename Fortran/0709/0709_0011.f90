 call s1
 print *,'pass'
 end
 subroutine s1
 character a(3,1)
 a=reshape((/'1','2','3'/),(/3,1/))
 call s2(a,1,3)
 end
 subroutine s2(a,i,j)
 character*(*) a(i,j)	
 call s3((a),1,3)
 call s3(((a)),1,3)
 end
 subroutine s3(a,i,j)
 character(*) a(i,j)
 if (a(1,1)/='1')print *,'fail'
 if (a(1,2)/='2')print *,'fail'
 if (a(1,3)/='3')print *,'fail'
end

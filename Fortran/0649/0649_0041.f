      call sub1()
      call sub2()
      call sub3()
      print *,'pass'
      end

      subroutine sub3()
      integer ans1,ans2,ans3,ans4
      data ans1,ans2,ans3,ans4/0,0,0,0/
      bbb:do 20 c=1,1
      aaa:do 10 b=1,2
      vvv:do 30 j=1,1
      if (b.eq.1) cycle   
      xxx:do 1 a=1,2
         ans1=ans1+1
         exit bbb 
111      cycle   
 1    enddo xxx
         ans2=ans2+1
 14   cycle aaa 
 30   enddo vvv
      ans3=ans3+1    
 10   enddo aaa
      ans4=ans4+1    
 20   enddo bbb
      if (ans1.ne.1) print *,'sub2 err'
      if (ans2.ne.0) print *,'sub2 err'
      if (ans3.ne.1) print *,'sub2 err'
      if (ans4.ne.0) print *,'sub2 err'
      end

      subroutine sub2()
      integer ans1,ans2,ans3,ans4
      data ans1,ans2,ans3,ans4/0,0,0,0/
      bbb:do 20 c=1,1
      aaa:do 10 b=1,2
      vvv:do 30 j=1,1
      if (b.eq.1) cycle   
      xxx:do 1 a=1,2
         ans1=ans1+1
         exit xxx 
         ans2=ans2+1
 1    enddo xxx
14    cycle aaa 
 30   enddo vvv
      ans3=ans3+1    
 10   enddo aaa
      ans4=ans4+1    
 20   enddo bbb
      if (ans1.ne.1) print *,'sub2 err'
      if (ans2.ne.0) print *,'sub2 err'
      if (ans3.ne.1) print *,'sub2 err'
      if (ans4.ne.1) print *,'sub2 err'
      end

      subroutine sub1()
      integer ans1,ans2,ans3,ans4
      data ans1,ans2,ans3,ans4/0,0,0,0/
      bbb:do 20 c=1,1
      aaa:do 10 b=1,2
      vvv:do 30 j=1,1
      if (b.eq.1) cycle   
      do a=1,2
         ans1=ans1+1
         exit 
      enddo
      ans2=ans2+1
 14   cycle aaa 
 30   enddo vvv
      ans3=ans3+1    
 10   enddo aaa
      ans4=ans4+1    
 20   enddo bbb
      if (ans1.ne.1) print *,'sub1 err'
      if (ans2.ne.1) print *,'sub1 err'
      if (ans3.ne.1) print *,'sub1 err'
      if (ans4.ne.1) print *,'sub1 err'
      end

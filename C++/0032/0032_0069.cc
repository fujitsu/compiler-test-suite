#include <stdio.h>
#include <stdlib.h>

int first_flag;

class ozObjHead {                       
public:
        int i;
        int count;                      
        ozObjHead() {
                i = 999;
                count = 0;
        }
        ~ozObjHead() {
	  
        }
};

class AA;
class OZRef {
        ozObjHead* head;
public:
        OZRef(AA* p) {
                
                head = new ozObjHead();         
                head->count = 1;
        }
        OZRef(const OZRef& p) {
                
                head = p.head;                  
                head->count++;                  
        }
        ~OZRef() {
                
                head->count--;             
                if (head->count == 0) {
                        delete head;            
                }
        }
        void show() {                           
	        
	        if( head->i == 999 && head->count == 2)
		  {
		    if (first_flag == 0)
		      first_flag = 1;
		    else if (first_flag == 1)
		      printf("ok\n");
		    else {
		      printf("ng\n"); 
		      exit(0);
		    }
		  }
		else {
		  printf("ng\n");
		  exit(0);
		}
		  
        }
};

class AA {  
public:
        int i;
        AA(int x) {}
};

OZRef
create(int i)   
{
        return new AA(i);               
}                            

void memory_reuse()  
{       int s = 32;
        char* a = new char[s];
        for (int i = 0;i < s; i++) {
                a[i] = 0;
        }
}
int main()
{
        {
        OZRef a = create(999);  
                          
        a.show();
        memory_reuse();
        a.show();
        }
        return 0;
}

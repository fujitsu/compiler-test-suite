extern "C" void printf(char*,...);
enum {A,B,C,D,E,F,G } cond=A ;   int i=0;


void func1(){

  try {
  }
  catch (int){
  }
  catch (float){
  }
  try {
    i++;
  }
  catch (int ){
  }
  catch (char){
  }
}


void func2() {

  try {
    try{
     try{
       try{
        try{
         try{
          try{
           try{
            try{
             try{ 
                i++; 
             }  
             catch (char){            }
             catch (unsigned char){             }
             try{ 
                i++;  
                throw (double)1.0; 
             }  
             catch (char***){            }
             catch (unsigned char****){             }
            }
            catch (short *){            }
            catch (unsigned short **){  }
            catch (char){}
	  }
          catch (int){}
          catch (int [2]){}
         }
         catch (long ){}
         catch (long (*)()){}
        }
        catch (long long){}
        catch (long long int ***){}
       }
       catch (unsigned  int){}
      }
      catch (unsigned long long ){}
      catch (unsigned long long (*)[3]){}
     }
     catch (float){}
    }
    catch (double){printf("nest 10:double\n");}
    catch (double **){}
    catch (unsigned  int){}
   }
   catch (bool){}
   catch (wchar_t){}
}

void func3 (){

  try {
    try{
     try{
       try{
        try{
         try{
          try{
           try{
            try{
             try{ 
              try{
               try{
                try{
                 try{
                  try{
                   try{
                    try{
                     try{
                      try{
                       try{
                         i++;  
                       }
		       catch (int (*)[3]){}
		       catch (int (**)[3]){}
                       try{
                         i++;
                         throw (bool)0;  
                       }
		       catch (int (*)[3]){}
		       catch (int (**)[3]){}
                      }
                      catch (short (*)()){}  
                      catch (short (**)(int)){}
                     }
		     catch (unsigned short (*)[2]){}
                    }  
		    catch (char (*)[3]){}
		   }
		   catch (unsigned char(*)[4]){}
		 }
                 catch (unsigned int (**)[3] ){}
		}
		catch (float (*)[2]){}
	       }
	       catch (wchar_t (**)[2]){}
	      }
	      catch (bool (*)[100]){} 
	     }
	     catch (signed char ***){} 
	    }  
            catch (char){            }
            catch (unsigned char){             }
	   }
           catch (short *){            }
           catch (unsigned short **){  }
           catch (char){}
	  }
          catch (int){}
          catch (int [2]){}
         }
         catch (long ){}
         catch (long (*)()){}
        }
        catch (long long){}
        catch (long long int ***){}
       }
       catch (unsigned  int){}
      }
      catch (unsigned long long ){}
      catch (unsigned long long (*)[3]){}
     }
     catch (float){}
    }
    catch (double){}
    catch (double **){}
    catch (unsigned  int){}
   }
   catch (bool){ printf("nest 20: bool\n");}
   catch (wchar_t){}
}

void func4() {

  try {
    try{
     try{
       try{
        try{
         try{
          try{
           try{
            try{
             try{ 
              try{
               try{
                try{
                 try{
                  try{
                   try{
                    try{
                     try{
                      try{
                       try{
			 try{
			   try{
			     try{
			       try{
				 try{
				   try{
				     try{
				       try{
					 try{
					   try{
					     try{
					       try{
						 try{
						   try{
						     try{
						       try{
							 try{
							   try{
							     try{
							       try{
								 try{
								   try{
								     try{
								       try{
									 try{
									   try{
									     try{
									       try{
										 try{
										   try{
										     i++; 
										   }
										   catch (long **){}
										   try{
										     i++;
										     throw (unsigned long long )0;
										   }
										   catch (long **){}
										 }
										 catch(long ***){}
									       }
									       catch(long****){}
									     }
									     catch(long****){}
									   }
									   catch(long*****){}
									 }
									 catch(long******){}
								       }
								       catch(long***** **){} 
								     }
								     catch(long***** ***){}
								   }
								   catch(long***** ****){}
								 }
								 catch(long***** *****){} 
							       }
							       catch(bool*){}
							     }
							     catch(bool**){}
							   }
							   catch(bool***){}
							 }
							 catch(bool****){}
						       }
						       catch(bool*****){}
						     }
						     catch(bool***** *){}
						   }
						   catch(bool***** **){}
						 }
						 catch(bool***** ***){}
					       }
					       catch(bool***** ****){}
					     }
					     catch(bool***** *****){}
					   }
					   catch(bool***** ***** *){} 
					 }
					 catch(bool***** ***** **){}
				       }
				       catch(bool***** ***** ***){}
				     }
				     catch(bool***** ***** ****){}
				   }
				   catch(bool***** ***** *****){}
				 }
				 catch(bool***** ***** ******){}
			       }
			       catch(bool***** ***** ***** **){}
			     }
			     catch(bool***** ***** ***** ***){}
			   }
			   catch(bool***** ***** ***** ****){}
			 }
			 catch(bool***** ***** ***** *****){}
                       }
		       catch (int (*)[3]){}
		       catch (int (**)[3]){}
                      }
                      catch (short (*)()){}  
                      catch (short (**)(int)){}
                     }
		     catch (unsigned short (*)[2]){}
                    }  
		    catch (char (*)[3]){}
		   }
		   catch (unsigned char(*)[4]){}
		 }
                 catch (unsigned int (**)[3] ){}
		}
		catch (float (*)[2]){}
	       }
	       catch (wchar_t (**)[2]){}
	      }
	      catch (bool (*)[100]){} 
	     }
	     catch (signed char ***){} 
	    }  
            catch (char){            }
            catch (unsigned char){             }
	   }
           catch (short *){            }
           catch (unsigned short **){  }
           catch (char){}
	  }
          catch (int){}
          catch (int [2]){}
         }
         catch (long ){}
         catch (long (*)()){}
        }
        catch (long long){}
        catch (long long int ***){}
       }
       catch (unsigned  int){}
      }
      catch (unsigned long long ){printf("nest 50: U long long\n");}
      catch (unsigned long long (*)[3]){}
     }
     catch (float){}
    }
    catch (double){}
    catch (double **){}
    catch (unsigned  int){}
   }
   catch (bool){ }
   catch (wchar_t){}
}


void func5(){
  try{
  }
  catch(int *){} 
  try{
  }
  catch(int **){} 
  try{
  }
  catch(int ***){} 
  try{
  }
  catch(int ****){} 
  try{
  }
  catch(int *****){} 
  try{
  }
  catch(int ******){} 
  try{
  }
  catch(int *******){} 
  try{
  }
  catch(int ********){} 
  try{
  }
  catch(int *********){} 
  try{
   i++;  
  }
  catch(int **********){} 
  try{
   i++;
   throw (int **********)0; 
  }
  catch(int **********){printf("next 10:int *...*\n");}
}

void func6(){
  try{
  }
  catch(char *){} 
  try{
  }
  catch(char **){} 
  try{
  }
  catch(char ***){} 
  try{
  }
  catch(char ****){} 
  try{
  }
  catch(char *****){} 
  try{
  }
  catch(char ******){} 
  try{
  }
  catch(char *******){} 
  try{
  }
  catch(char ********){} 
  try{
  }
  catch(char *********){} 
  try{
  }
  catch(char **********){} 
  try{
  }
  catch(char ***********){} 
  try{
  }
  catch(char ************){} 
  try{
  }
  catch(char *************){} 
  try{
  }
  catch(char **************){} 
  try{
  }
  catch(char ***************){} 
  try{
  }
  catch(char ****************){} 
  try{
  }
  catch(char *****************){} 
  try{
  }
  catch(char ******************){} 
  try{
  }
  catch(char *******************){} 
  try{
    i++;   
  }
  catch(char ********************){} 
  try{
    i++;
    throw(char)0;
  }
  catch(char ********************){} 
  catch(char){ printf("next 20: char\n");} 
}
void func7(){
  try{
      i++;
  }
  catch(short *){} 
  try{
      i++;
  }
  catch(short **){} 
  try{
      i++;
  }
  catch(short ***){} 
  try{
      i++;
  }
  catch(short ****){} 
  try{
      i++;
  }
  catch(short *****){} 
  try{
      i++;
  }
  catch(short ******){} 
  try{
      i++;
  }
  catch(short *******){} 
  try{
      i++;
  }
  catch(short ********){} 
  try{
      i++;
  }
  catch(short *********){} 
  try{
      i++;
  }
  catch(short **********){} 
  try{
      i++;
  }
  catch(short ***********){} 
  try{
      i++;
  }
  catch(short ************){} 
  try{
      i++;
  }
  catch(short *************){} 
  try{
      i++;
  }
  catch(short **************){} 
  try{
      i++;
  }
  catch(short ***************){} 
  try{
      i++;
  }
  catch(short ****************){} 
  try{
      i++;
  }
  catch(short *****************){} 
  try{
      i++;
  }
  catch(short ******************){} 
  try{
      i++;
  }
  catch(short *******************){} 
  try{
      i++;
  }
  catch(short ********************){} 
  try{
      i++;
  }
  catch(short *********************){} 
  try{
      i++;
  }
  catch(short **********************){} 
  try{
      i++;
  }
  catch(short ***********************){} 
  try{
      i++;
  }
  catch(short ************************){} 
  try{
      i++;
  }
  catch(short *************************){} 
  try{
      i++;
  }
  catch(short **************************){} 
  try{
      i++;
  }
  catch(short ***************************){} 
  try{
      i++;
  }
  catch(short ****************************){} 
  try{
      i++;
  }
  catch(short *****************************){} 
  try{
      i++;
  }
  catch(short ******************************){} 
  try{
      i++;
  }
  catch(short *******************************){} 
  try{
      i++;
  }
  catch(short ********************************){} 
  try{
      i++;
  }
  catch(short *********************************){} 
  try{
      i++;
  }
  catch(short **********************************){} 
  try{
      i++;
  }
  catch(short ***********************************){} 
  try{
      i++;
  }
  catch(short ************************************){} 
  try{
      i++;
  }
  catch(short *************************************){} 
  try{
      i++;
  }
  catch(short **************************************){} 
  try{
      i++;
  }
  catch(short ***************************************){} 
  try{
      i++;
  }
  catch(short ****************************************){} 
  try{
      i++;
  }
  catch(short *****************************************){} 
  try{
      i++;
  }
  catch(short ******************************************){} 
  try{
      i++;
  }
  catch(short *******************************************){} 
  try{
      i++;
  }
  catch(short ********************************************){} 
  try{
      i++;
  }
  catch(short *********************************************){} 
  try{
      i++;
  }
  catch(short **********************************************){} 
  try{
      i++;
  }
  catch(short ***********************************************){} 
  try{
      i++;
  }
  catch(short ************************************************){} 
  try{
      i++;
  }
  catch(short *************************************************){} 
  try{
      i++; 
  }
  catch(short **************************************************){} 
  try{
      i++;
      throw (short )0; 
  }
  catch(short **************************************************){} 
  catch (short){ printf("next 50 : short\n");}
}

int main(){
 switch(cond){
 case A:
   func1();
   break;
 case B:
   func2();
   break;
 case C:
   func3();
   break;
 case D:
   func4();
   break;
 case E:
   func5();
   break;
 case F:
   func6();
   break;
 case G:
   func7();
   break;
 default:
   printf("???\n");
 }

 printf("ok\n");
}

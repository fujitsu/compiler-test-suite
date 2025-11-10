enum E : short;         
                        

                        
enum class G : short;   
                        
enum class H;           
                        


                        

                        


                        

                        

                        

                        

enum class G : short {g1, g2, g3, g4}; 
enum class H { h1, h2, h3, }; 
                              
enum class I : int;

                        

enum class J : char { j1, j2, j3, }; 


enum K : short;                      

                                     

enum class L : short;                

                                     

extern "C" int printf(const char*,...);

int main()
{
  enum G g;
  enum H h;
  g = G::g2;
  h = H::h3;
  if (((short)g == 1) && ((int)h == 2)) {
    printf("OK\n");
  } else {
    printf("FAIL\n");
  }
  return 0;
}

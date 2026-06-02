#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned short, unsigned short);
extern signed short (*v2) (unsigned char, unsigned short, unsigned short);
extern unsigned int v3 (signed char, signed short, unsigned int);
extern unsigned int (*v4) (signed char, signed short, unsigned int);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
signed short v7 (unsigned char, signed char, unsigned short, unsigned char);
signed short (*v8) (unsigned char, signed char, unsigned short, unsigned char) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern void v13 (signed char, signed int, signed char);
extern void (*v14) (signed char, signed int, signed char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned char v17 (unsigned char, signed int, signed char);
extern unsigned char (*v18) (unsigned char, signed int, signed char);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern unsigned char v21 (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned char (*v22) (unsigned char, unsigned int, unsigned int, signed char);
extern signed char v25 (signed int, signed int, unsigned char);
extern signed char (*v26) (signed int, signed int, unsigned char);
extern unsigned char v27 (unsigned char, signed char, signed char, unsigned int);
extern unsigned char (*v28) (unsigned char, signed char, signed char, unsigned int);
signed char v29 (unsigned char, signed short, signed short, unsigned char);
signed char (*v30) (unsigned char, signed short, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v57 = 2;
signed short v56 = -2;
unsigned int v55 = 0U;

signed char v29 (unsigned char v58, signed short v59, signed short v60, unsigned char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = -2;
unsigned short v63 = 3;
signed int v62 = 2;
trace++;
switch (trace)
{
case 3: 
return -3;
case 5: 
return -3;
case 7: 
return -4;
case 9: 
return -3;
case 11: 
return -2;
default: abort ();
}
}
}
}

signed short v7 (unsigned char v65, signed char v66, unsigned short v67, unsigned char v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = 1;
unsigned int v70 = 1U;
signed short v69 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

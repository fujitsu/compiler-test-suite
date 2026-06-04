#include <stdlib.h>
unsigned int v1 (signed char);
unsigned int (*v2) (signed char) = v1;
extern unsigned short v3 (unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char);
extern signed short v5 (unsigned short, unsigned int, unsigned short);
extern signed short (*v6) (unsigned short, unsigned int, unsigned short);
extern unsigned int v7 (signed char, signed int);
extern unsigned int (*v8) (signed char, signed int);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed int v11 (signed char, signed char);
extern signed int (*v12) (signed char, signed char);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern signed short v21 (unsigned char, signed short, signed char, signed char);
extern signed short (*v22) (unsigned char, signed short, signed char, signed char);
extern void v23 (unsigned short, unsigned int);
extern void (*v24) (unsigned short, unsigned int);
extern signed short v25 (unsigned char, unsigned int, signed char, signed char);
extern signed short (*v26) (unsigned char, unsigned int, signed char, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v53 = 3;
unsigned int v52 = 7U;
unsigned int v51 = 0U;

unsigned short v19 (void)
{
{
for (;;) {
unsigned int v56 = 0U;
unsigned int v55 = 3U;
unsigned short v54 = 6;
trace++;
switch (trace)
{
case 4: 
return v54;
case 6: 
{
unsigned char v57;
unsigned char v58;
v57 = 3 - 6;
v58 = v15 (v57);
history[history_index++] = (int)v58;
}
break;
case 8: 
return 6;
case 10: 
{
unsigned char v59;
unsigned char v60;
v59 = 0 + 5;
v60 = v15 (v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return v54;
default: abort ();
}
}
}
}

unsigned int v1 (signed char v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 5;
signed char v63 = 0;
unsigned short v62 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed char v65;
signed int v66;
unsigned int v67;
v65 = -4 + -3;
v66 = -4 - 2;
v67 = v7 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 16: 
return 6U;
default: abort ();
}
}
}
}

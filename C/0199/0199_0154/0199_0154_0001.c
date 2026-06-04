#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned short, unsigned short);
extern signed int (*v2) (unsigned short, unsigned short, unsigned short);
unsigned short v3 (unsigned short, signed short);
unsigned short (*v4) (unsigned short, signed short) = v3;
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned short v7 (signed int, signed char);
extern unsigned short (*v8) (signed int, signed char);
extern signed int v9 (unsigned char, signed short, unsigned char, signed int);
extern signed int (*v10) (unsigned char, signed short, unsigned char, signed int);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed char v13 (signed char, signed short, signed short, signed short);
extern signed char (*v14) (signed char, signed short, signed short, signed short);
extern signed short v15 (unsigned char, unsigned char);
extern signed short (*v16) (unsigned char, unsigned char);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned short v19 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v20) (unsigned int, unsigned int, unsigned char);
extern void v21 (signed int, signed short);
extern void (*v22) (signed int, signed short);
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed short v27 (unsigned int, signed int, unsigned int, signed short);
extern signed short (*v28) (unsigned int, signed int, unsigned int, signed short);
extern unsigned int v29 (signed char);
extern unsigned int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v54 = 2;
unsigned int v53 = 2U;
unsigned int v52 = 1U;

unsigned char v17 (void)
{
{
for (;;) {
signed short v57 = 1;
signed char v56 = -2;
signed short v55 = 3;
trace++;
switch (trace)
{
case 8: 
return 5;
case 10: 
return 7;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v58, signed short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 5;
unsigned char v61 = 6;
signed int v60 = -4;
trace++;
switch (trace)
{
case 4: 
{
signed int v63;
signed short v64;
v63 = v60 - v60;
v64 = v59 - 1;
v21 (v63, v64);
}
break;
case 6: 
{
unsigned char v65;
unsigned char v66;
signed short v67;
v65 = 0 - 4;
v66 = 6 + 5;
v67 = v15 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 12: 
return 5;
case 14: 
return v58;
default: abort ();
}
}
}
}

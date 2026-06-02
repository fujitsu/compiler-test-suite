#include <stdlib.h>
extern signed short v1 (unsigned char);
extern signed short (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
signed char v9 (signed int);
signed char (*v10) (signed int) = v9;
extern unsigned short v11 (unsigned short, unsigned int, unsigned char, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned char, unsigned int);
extern void v13 (signed char, unsigned int, signed char, signed int);
extern void (*v14) (signed char, unsigned int, signed char, signed int);
extern void v15 (signed int);
extern void (*v16) (signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed int v21 (unsigned short, unsigned char);
signed int (*v22) (unsigned short, unsigned char) = v21;
extern unsigned char v23 (unsigned short, signed short, signed int, signed short);
extern unsigned char (*v24) (unsigned short, signed short, signed int, signed short);
extern unsigned int v25 (unsigned char, signed char, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, unsigned int);
extern unsigned char v27 (signed int, unsigned char, signed short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned char, signed short, unsigned short);
extern signed int v29 (signed int, signed int);
extern signed int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v53 = 0;
unsigned short v52 = 4;
signed char v51 = 1;

signed int v21 (unsigned short v54, unsigned char v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = -3;
unsigned char v57 = 5;
signed short v56 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed int v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 0;
signed char v61 = -3;
unsigned int v60 = 6U;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v63;
v63 = v17 ();
history[history_index++] = (int)v63;
}
break;
case 8: 
{
unsigned int v64;
v64 = v17 ();
history[history_index++] = (int)v64;
}
break;
case 10: 
{
signed int v65;
signed int v66;
signed int v67;
v65 = -3 - 1;
v66 = v59 - v59;
v67 = v29 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

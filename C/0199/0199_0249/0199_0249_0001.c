#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed int v5 (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed int (*v6) (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed short v7 (signed short, signed char, unsigned int, signed char);
extern signed short (*v8) (signed short, signed char, unsigned int, signed char);
unsigned int v9 (signed short, unsigned char, signed int, signed short);
unsigned int (*v10) (signed short, unsigned char, signed int, signed short) = v9;
extern unsigned char v11 (signed char, unsigned short);
extern unsigned char (*v12) (signed char, unsigned short);
extern signed int v15 (void);
extern signed int (*v16) (void);
signed char v17 (unsigned short);
signed char (*v18) (unsigned short) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned short, signed int, signed int);
extern signed short (*v22) (unsigned short, signed int, signed int);
extern signed char v23 (signed int, signed short, signed short, unsigned short);
extern signed char (*v24) (signed int, signed short, signed short, unsigned short);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern void v27 (unsigned int, unsigned char);
extern void (*v28) (unsigned int, unsigned char);
extern unsigned char v29 (unsigned short, unsigned int, signed int);
extern unsigned char (*v30) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v59 = -2;
unsigned short v58 = 5;
signed char v57 = -4;

signed char v17 (unsigned short v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 3U;
signed char v62 = -3;
signed char v61 = -1;
trace++;
switch (trace)
{
case 1: 
return v61;
case 3: 
{
unsigned short v64;
v64 = v19 ();
history[history_index++] = (int)v64;
}
break;
case 5: 
{
unsigned short v65;
v65 = v19 ();
history[history_index++] = (int)v65;
}
break;
case 7: 
return v61;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v66, unsigned char v67, signed int v68, signed short v69)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = 1;
signed char v71 = -2;
signed int v70 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

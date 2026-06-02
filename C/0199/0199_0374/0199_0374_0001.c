#include <stdlib.h>
unsigned int v1 (unsigned char, signed short);
unsigned int (*v2) (unsigned char, signed short) = v1;
extern unsigned char v3 (signed short, unsigned char, signed char);
extern unsigned char (*v4) (signed short, unsigned char, signed char);
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
extern signed short v7 (unsigned int, unsigned int);
extern signed short (*v8) (unsigned int, unsigned int);
extern unsigned int v9 (signed char, signed short, unsigned char, signed char);
extern unsigned int (*v10) (signed char, signed short, unsigned char, signed char);
extern signed short v11 (signed char, signed short, unsigned short, unsigned short);
extern signed short (*v12) (signed char, signed short, unsigned short, unsigned short);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern void v15 (unsigned int, signed int);
extern void (*v16) (unsigned int, signed int);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern unsigned char v19 (signed char, unsigned char);
extern unsigned char (*v20) (signed char, unsigned char);
extern void v21 (signed short);
extern void (*v22) (signed short);
unsigned short v23 (unsigned char);
unsigned short (*v24) (unsigned char) = v23;
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern unsigned short v29 (signed char, signed int, signed int);
extern unsigned short (*v30) (signed char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v55 = 2;
unsigned short v54 = 1;
unsigned int v53 = 4U;

unsigned short v23 (unsigned char v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
signed char v59 = 1;
signed char v58 = -2;
unsigned char v57 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v60, signed short v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 3;
unsigned int v63 = 1U;
unsigned int v62 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v65;
signed char v66;
v65 = v60 + v64;
v66 = v13 (v65);
history[history_index++] = (int)v66;
}
break;
case 3: 
{
unsigned char v67;
signed char v68;
v67 = v64 + v64;
v68 = v13 (v67);
history[history_index++] = (int)v68;
}
break;
case 13: 
return v62;
case 16: 
return 7U;
default: abort ();
}
}
}
}

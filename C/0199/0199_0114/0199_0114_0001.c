#include <stdlib.h>
signed short v1 (signed short, unsigned int);
signed short (*v2) (signed short, unsigned int) = v1;
extern void v3 (unsigned int, signed short, unsigned char, unsigned short);
extern void (*v4) (unsigned int, signed short, unsigned char, unsigned short);
extern unsigned int v5 (signed short, signed char, signed int);
extern unsigned int (*v6) (signed short, signed char, signed int);
extern unsigned short v7 (signed int, unsigned short);
extern unsigned short (*v8) (signed int, unsigned short);
extern unsigned short v9 (signed char, unsigned short, unsigned int, signed int);
extern unsigned short (*v10) (signed char, unsigned short, unsigned int, signed int);
extern signed char v11 (signed short, signed short, unsigned short, unsigned short);
extern signed char (*v12) (signed short, signed short, unsigned short, unsigned short);
extern signed int v13 (unsigned char, signed int, unsigned int, signed int);
extern signed int (*v14) (unsigned char, signed int, unsigned int, signed int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
signed char v25 (unsigned char);
signed char (*v26) (unsigned char) = v25;
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern void v29 (signed int, unsigned short);
extern void (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v55 = 0;
unsigned char v54 = 0;
signed short v53 = 2;

signed char v25 (unsigned char v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = -1;
signed char v58 = 3;
unsigned short v57 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v60, unsigned int v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 1;
signed int v63 = -3;
unsigned char v62 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v65;
signed short v66;
unsigned char v67;
unsigned short v68;
v65 = v61 - 6U;
v66 = v60 - 2;
v67 = v62 - 6;
v68 = 0 + 4;
v3 (v65, v66, v67, v68);
}
break;
case 14: 
return v60;
default: abort ();
}
}
}
}

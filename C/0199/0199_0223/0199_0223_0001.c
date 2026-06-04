#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
void v3 (unsigned char, unsigned short);
void (*v4) (unsigned char, unsigned short) = v3;
extern unsigned short v5 (signed char, signed int, unsigned short, signed int);
extern unsigned short (*v6) (signed char, signed int, unsigned short, signed int);
void v7 (unsigned int);
void (*v8) (unsigned int) = v7;
extern unsigned int v9 (signed short, signed int);
extern unsigned int (*v10) (signed short, signed int);
extern signed char v11 (unsigned char, unsigned int);
extern signed char (*v12) (unsigned char, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (unsigned short, signed short);
extern unsigned short (*v16) (unsigned short, signed short);
extern signed short v17 (unsigned char, unsigned int, signed char, unsigned int);
extern signed short (*v18) (unsigned char, unsigned int, signed char, unsigned int);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed int v25 (unsigned char, signed char, signed char);
extern signed int (*v26) (unsigned char, signed char, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v63 = 3U;
unsigned char v62 = 3;
signed char v61 = 0;

void v7 (unsigned int v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 5;
unsigned short v66 = 1;
signed short v65 = 2;
trace++;
switch (trace)
{
case 8: 
{
signed char v68;
signed int v69;
unsigned short v70;
signed int v71;
unsigned short v72;
v68 = 1 - -4;
v69 = -4 - -4;
v70 = v67 + 7;
v71 = 2 + 3;
v72 = v5 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

void v3 (unsigned char v73, unsigned short v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = -1;
unsigned int v76 = 1U;
signed short v75 = 2;
trace++;
switch (trace)
{
case 1: 
return;
case 3: 
{
unsigned short v78;
signed char v79;
v78 = v74 + v74;
v79 = v29 (v78);
history[history_index++] = (int)v79;
}
break;
case 17: 
return;
default: abort ();
}
}
}
}

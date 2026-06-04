#include <stdlib.h>
extern signed int v1 (signed int, signed int, unsigned char);
extern signed int (*v2) (signed int, signed int, unsigned char);
extern unsigned char v3 (unsigned short, unsigned int);
extern unsigned char (*v4) (unsigned short, unsigned int);
extern void v5 (unsigned short, unsigned char, signed int);
extern void (*v6) (unsigned short, unsigned char, signed int);
extern unsigned char v7 (unsigned char, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned char, unsigned int, unsigned int);
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
unsigned char v11 (signed short, signed short);
unsigned char (*v12) (signed short, signed short) = v11;
extern signed int v13 (signed int, signed char, unsigned short);
extern signed int (*v14) (signed int, signed char, unsigned short);
extern signed char v15 (unsigned int, unsigned short, signed char);
extern signed char (*v16) (unsigned int, unsigned short, signed char);
extern unsigned short v17 (unsigned short, unsigned int, signed short);
extern unsigned short (*v18) (unsigned short, unsigned int, signed short);
extern unsigned char v19 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v20) (unsigned short, unsigned int, unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
void v27 (signed char, unsigned char, unsigned short, unsigned char);
void (*v28) (signed char, unsigned char, unsigned short, unsigned char) = v27;
extern signed int v29 (signed int, signed short, unsigned char);
extern signed int (*v30) (signed int, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v60 = -1;
unsigned short v59 = 4;
signed char v58 = 2;

void v27 (signed char v61, unsigned char v62, unsigned short v63, unsigned char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = 3;
unsigned short v66 = 1;
unsigned short v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed short v68, signed short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -3;
signed short v71 = -1;
unsigned short v70 = 5;
trace++;
switch (trace)
{
case 3: 
{
signed char v73;
signed short v74;
signed short v75;
v73 = 0 - v72;
v74 = v68 + v68;
v75 = v25 (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 5: 
return 5;
default: abort ();
}
}
}
}

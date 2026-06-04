#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short, signed int, signed short);
extern unsigned char (*v2) (unsigned int, unsigned short, signed int, signed short);
unsigned short v3 (unsigned short, unsigned short, unsigned char, signed int);
unsigned short (*v4) (unsigned short, unsigned short, unsigned char, signed int) = v3;
extern unsigned int v5 (signed char, unsigned int);
extern unsigned int (*v6) (signed char, unsigned int);
extern unsigned short v7 (unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned char);
unsigned char v9 (unsigned int);
unsigned char (*v10) (unsigned int) = v9;
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned int, unsigned char);
extern unsigned int (*v22) (unsigned int, unsigned char);
extern unsigned char v23 (signed int, signed short, unsigned char, signed short);
extern unsigned char (*v24) (signed int, signed short, unsigned char, signed short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (signed short, signed short);
extern signed int (*v28) (signed short, signed short);
extern signed short v29 (unsigned int, signed int);
extern signed short (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v58 = 2;
unsigned char v57 = 5;
signed int v56 = -4;

unsigned char v9 (unsigned int v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 1;
unsigned short v61 = 7;
unsigned char v60 = 4;
trace++;
switch (trace)
{
case 9: 
{
signed int v63;
v63 = v15 ();
history[history_index++] = (int)v63;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v64, unsigned short v65, unsigned char v66, signed int v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 2;
unsigned int v69 = 1U;
unsigned short v68 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

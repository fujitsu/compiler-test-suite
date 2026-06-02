#include <stdlib.h>
unsigned int v1 (signed char, unsigned short);
unsigned int (*v2) (signed char, unsigned short) = v1;
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern unsigned char v5 (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned char (*v6) (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
extern signed char v9 (signed short, signed char);
extern signed char (*v10) (signed short, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned char, signed char);
extern unsigned char (*v14) (unsigned char, signed char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
void v17 (unsigned int, unsigned int);
void (*v18) (unsigned int, unsigned int) = v17;
extern unsigned short v19 (signed short);
extern unsigned short (*v20) (signed short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned int, unsigned int);
extern unsigned char (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v57 = 2;
unsigned int v56 = 6U;
signed char v55 = -3;

void v17 (unsigned int v58, unsigned int v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 0;
unsigned char v61 = 1;
signed short v60 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed char v63, unsigned short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = -2;
signed int v66 = -1;
signed char v65 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed short v68;
v68 = v23 ();
history[history_index++] = (int)v68;
}
break;
case 14: 
return 3U;
default: abort ();
}
}
}
}

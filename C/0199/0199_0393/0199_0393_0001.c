#include <stdlib.h>
void v1 (unsigned char);
void (*v2) (unsigned char) = v1;
extern signed char v3 (unsigned int, unsigned int, unsigned char);
extern signed char (*v4) (unsigned int, unsigned int, unsigned char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, unsigned int, signed short, signed int);
extern unsigned short (*v8) (signed short, unsigned int, signed short, signed int);
extern signed char v9 (unsigned int, unsigned int, unsigned int, signed short);
extern signed char (*v10) (unsigned int, unsigned int, unsigned int, signed short);
extern void v11 (unsigned int, unsigned int, unsigned short, signed short);
extern void (*v12) (unsigned int, unsigned int, unsigned short, signed short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned char v17 (unsigned char);
extern unsigned char (*v18) (unsigned char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
unsigned int v21 (unsigned char, signed short);
unsigned int (*v22) (unsigned char, signed short) = v21;
extern unsigned short v23 (unsigned int);
extern unsigned short (*v24) (unsigned int);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern unsigned int v29 (signed int, signed int);
extern unsigned int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v57 = 1;
unsigned int v56 = 7U;
signed short v55 = 2;

unsigned int v21 (unsigned char v58, signed short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 7U;
signed char v61 = -3;
signed int v60 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned char v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = -4;
signed char v65 = -4;
signed int v64 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v67;
unsigned int v68;
unsigned int v69;
signed short v70;
signed char v71;
v67 = 5U - 7U;
v68 = 4U - 4U;
v69 = 1U + 2U;
v70 = -2 + 0;
v71 = v9 (v67, v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}

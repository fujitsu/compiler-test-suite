#include <stdlib.h>
extern void v1 (signed int, unsigned short);
extern void (*v2) (signed int, unsigned short);
extern signed char v3 (signed int, unsigned short, signed int);
extern signed char (*v4) (signed int, unsigned short, signed int);
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
extern signed char v7 (unsigned char, unsigned int, unsigned char, signed int);
extern signed char (*v8) (unsigned char, unsigned int, unsigned char, signed int);
extern void v9 (unsigned int, signed short, signed char);
extern void (*v10) (unsigned int, signed short, signed char);
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
extern signed short v13 (signed short, signed char, signed char, unsigned short);
extern signed short (*v14) (signed short, signed char, signed char, unsigned short);
extern signed int v15 (signed char, unsigned char);
extern signed int (*v16) (signed char, unsigned char);
void v17 (unsigned char, unsigned int, unsigned short, unsigned char);
void (*v18) (unsigned char, unsigned int, unsigned short, unsigned char) = v17;
signed char v19 (signed int);
signed char (*v20) (signed int) = v19;
extern signed short v21 (unsigned char, unsigned char);
extern signed short (*v22) (unsigned char, unsigned char);
extern signed short v23 (unsigned short, signed char, unsigned int, signed short);
extern signed short (*v24) (unsigned short, signed char, unsigned int, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (signed short, signed char, unsigned char, unsigned short);
extern signed short (*v28) (signed short, signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v57 = 1;
unsigned char v56 = 2;
signed int v55 = -2;

signed char v19 (signed int v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 0U;
unsigned short v60 = 3;
signed char v59 = 2;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v62;
signed char v63;
unsigned int v64;
signed short v65;
signed short v66;
v62 = 3 - 0;
v63 = v59 + -4;
v64 = 5U + v61;
v65 = -4 + -2;
v66 = v23 (v62, v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

void v17 (unsigned char v67, unsigned int v68, unsigned short v69, unsigned char v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -3;
unsigned char v72 = 6;
signed int v71 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

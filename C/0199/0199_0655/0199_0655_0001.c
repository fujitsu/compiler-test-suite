#include <stdlib.h>
signed short v1 (unsigned char, unsigned char, unsigned int);
signed short (*v2) (unsigned char, unsigned char, unsigned int) = v1;
extern unsigned short v3 (signed char, unsigned char, signed char, signed short);
extern unsigned short (*v4) (signed char, unsigned char, signed char, signed short);
extern unsigned short v5 (signed short, unsigned char, unsigned short, signed char);
extern unsigned short (*v6) (signed short, unsigned char, unsigned short, signed char);
extern signed char v7 (unsigned short, signed short, unsigned char);
extern signed char (*v8) (unsigned short, signed short, unsigned char);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern signed int v11 (unsigned char, unsigned char, signed int, signed short);
extern signed int (*v12) (unsigned char, unsigned char, signed int, signed short);
extern signed char v13 (signed short, signed char);
extern signed char (*v14) (signed short, signed char);
void v15 (unsigned char, signed char);
void (*v16) (unsigned char, signed char) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, signed int, unsigned char);
extern signed int (*v22) (unsigned short, signed int, unsigned char);
extern signed int v23 (unsigned int, unsigned int, signed int);
extern signed int (*v24) (unsigned int, unsigned int, signed int);
signed short v25 (unsigned short);
signed short (*v26) (unsigned short) = v25;
extern signed int v27 (unsigned int, unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int, unsigned int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v57 = -2;
signed short v56 = 1;
signed char v55 = 3;

signed short v25 (unsigned short v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 5U;
unsigned int v60 = 1U;
signed int v59 = 0;
trace++;
switch (trace)
{
case 4: 
return 2;
default: abort ();
}
}
}
}

void v15 (unsigned char v62, signed char v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 1;
unsigned short v65 = 1;
unsigned short v64 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned char v67, unsigned char v68, unsigned int v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 3;
signed int v71 = -3;
unsigned int v70 = 2U;
trace++;
switch (trace)
{
case 0: 
return 3;
case 1: 
{
signed char v73;
unsigned char v74;
signed char v75;
signed short v76;
unsigned short v77;
v73 = -3 + -4;
v74 = 0 - v72;
v75 = 3 - 3;
v76 = 1 - -3;
v77 = v3 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 15: 
return -1;
default: abort ();
}
}
}
}

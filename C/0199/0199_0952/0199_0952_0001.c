#include <stdlib.h>
unsigned short v1 (signed int, signed char, unsigned short, signed short);
unsigned short (*v2) (signed int, signed char, unsigned short, signed short) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (unsigned short, signed short);
extern signed int (*v6) (unsigned short, signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (unsigned short, signed short);
extern unsigned int (*v10) (unsigned short, signed short);
unsigned char v11 (unsigned int, unsigned int, unsigned short, signed int);
unsigned char (*v12) (unsigned int, unsigned int, unsigned short, signed int) = v11;
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern signed char v15 (unsigned int, signed int, unsigned int, signed int);
extern signed char (*v16) (unsigned int, signed int, unsigned int, signed int);
extern unsigned char v17 (unsigned short, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned short, unsigned short, unsigned int, unsigned char);
void v19 (unsigned int, signed short, unsigned int);
void (*v20) (unsigned int, signed short, unsigned int) = v19;
extern unsigned int v21 (unsigned short, signed short, signed char);
extern unsigned int (*v22) (unsigned short, signed short, signed char);
extern signed short v23 (unsigned short, signed short, signed short, unsigned char);
extern signed short (*v24) (unsigned short, signed short, signed short, unsigned char);
extern void v25 (signed int, unsigned short, unsigned int);
extern void (*v26) (signed int, unsigned short, unsigned int);
extern unsigned int v27 (signed short, unsigned short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short, unsigned short);
extern unsigned short v29 (signed char, signed short, signed char, unsigned short);
extern unsigned short (*v30) (signed char, signed short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v56 = -1;
unsigned char v55 = 3;
signed char v54 = -1;

void v19 (unsigned int v57, signed short v58, unsigned int v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 2;
signed int v61 = 2;
unsigned char v60 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v63, unsigned int v64, unsigned short v65, signed int v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 0;
unsigned int v68 = 4U;
signed short v67 = -1;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v70;
signed short v71;
v70 = 2 + v69;
v71 = v13 (v70);
history[history_index++] = (int)v71;
}
break;
case 7: 
return 6;
case 9: 
{
unsigned char v72;
signed short v73;
v72 = v69 + v69;
v73 = v13 (v72);
history[history_index++] = (int)v73;
}
break;
case 11: 
return v69;
default: abort ();
}
}
}
}

unsigned short v1 (signed int v74, signed char v75, unsigned short v76, signed short v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = 3;
signed char v79 = -3;
signed int v78 = -4;
trace++;
switch (trace)
{
case 0: 
return 1;
case 1: 
{
signed char v81;
signed short v82;
signed char v83;
unsigned short v84;
unsigned short v85;
v81 = v75 + 3;
v82 = 1 - -2;
v83 = v75 + v79;
v84 = 2 + v76;
v85 = v29 (v81, v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}

#include <stdlib.h>
void v1 (unsigned short, signed char, signed char);
void (*v2) (unsigned short, signed char, signed char) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (signed short, signed short);
extern void (*v6) (signed short, signed short);
extern unsigned char v7 (signed short, signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed short, signed short, unsigned int, signed char);
extern unsigned short v9 (signed char, signed char);
extern unsigned short (*v10) (signed char, signed char);
extern signed int v11 (unsigned int, unsigned int, unsigned int);
extern signed int (*v12) (unsigned int, unsigned int, unsigned int);
extern signed int v13 (signed short, signed int, unsigned short);
extern signed int (*v14) (signed short, signed int, unsigned short);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern signed short v17 (unsigned char, unsigned short, signed int);
extern signed short (*v18) (unsigned char, unsigned short, signed int);
unsigned int v19 (signed short, signed short, unsigned char, signed char);
unsigned int (*v20) (signed short, signed short, unsigned char, signed char) = v19;
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed char v23 (unsigned int, unsigned int, unsigned char);
extern signed char (*v24) (unsigned int, unsigned int, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned short v27 (unsigned int, signed short, unsigned short, unsigned int);
extern unsigned short (*v28) (unsigned int, signed short, unsigned short, unsigned int);
extern signed int v29 (signed char, signed int);
extern signed int (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v50 = 4;
signed char v49 = 0;
unsigned short v48 = 3;

unsigned int v19 (signed short v51, signed short v52, unsigned char v53, signed char v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = -2;
signed int v56 = 1;
signed int v55 = 1;
trace++;
switch (trace)
{
case 1: 
return 5U;
case 11: 
return 0U;
default: abort ();
}
}
}
}

void v1 (unsigned short v58, signed char v59, signed char v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 7U;
unsigned int v62 = 7U;
signed int v61 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v64;
signed short v65;
unsigned char v66;
signed char v67;
unsigned int v68;
v64 = 1 - -3;
v65 = 3 + 1;
v66 = 6 + 5;
v67 = v60 + v59;
v68 = v19 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 2: 
{
unsigned int v69;
unsigned int v70;
unsigned int v71;
signed int v72;
v69 = 0U - v63;
v70 = 0U - v63;
v71 = v62 + v62;
v72 = v11 (v69, v70, v71);
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

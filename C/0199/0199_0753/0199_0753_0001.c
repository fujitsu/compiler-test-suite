#include <stdlib.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
unsigned int v3 (signed short, signed int, unsigned char);
unsigned int (*v4) (signed short, signed int, unsigned char) = v3;
extern unsigned int v5 (unsigned char, signed int, unsigned int);
extern unsigned int (*v6) (unsigned char, signed int, unsigned int);
void v7 (signed short, signed short);
void (*v8) (signed short, signed short) = v7;
extern unsigned char v9 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, signed char, unsigned short, unsigned int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (signed short, unsigned char, unsigned char, signed short);
extern unsigned int (*v14) (signed short, unsigned char, unsigned char, signed short);
extern signed char v15 (signed int, signed short, signed int);
extern signed char (*v16) (signed int, signed short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
extern void v21 (unsigned int, signed short, unsigned int);
extern void (*v22) (unsigned int, signed short, unsigned int);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed short v25 (unsigned short, signed int, unsigned short);
extern signed short (*v26) (unsigned short, signed int, unsigned short);
extern signed char v27 (signed char, signed int, signed short, unsigned short);
extern signed char (*v28) (signed char, signed int, signed short, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v51 = -3;
unsigned int v50 = 5U;
unsigned char v49 = 5;

void v7 (signed short v52, signed short v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = -1;
signed short v55 = -2;
unsigned short v54 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v57, signed int v58, unsigned char v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = 2;
signed int v61 = 2;
unsigned char v60 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v63;
signed int v64;
unsigned short v65;
signed short v66;
v63 = 3 - 1;
v64 = v62 + v62;
v65 = 3 + 1;
v66 = v25 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 3: 
{
unsigned short v67;
signed char v68;
unsigned short v69;
unsigned int v70;
unsigned char v71;
v67 = 4 + 7;
v68 = 3 + -2;
v69 = 1 - 2;
v70 = 2U + 5U;
v71 = v9 (v67, v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 5: 
{
unsigned short v72;
signed char v73;
unsigned short v74;
unsigned int v75;
unsigned char v76;
v72 = 2 - 7;
v73 = 1 + 0;
v74 = 5 - 7;
v75 = 4U + 5U;
v76 = v9 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 11: 
return 0U;
default: abort ();
}
}
}
}

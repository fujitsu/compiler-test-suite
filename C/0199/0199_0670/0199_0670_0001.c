#include <stdlib.h>
unsigned short v1 (signed short);
unsigned short (*v2) (signed short) = v1;
extern signed short v3 (unsigned short, signed short, unsigned int, signed char);
extern signed short (*v4) (unsigned short, signed short, unsigned int, signed char);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
extern signed short v7 (unsigned short, signed char);
extern signed short (*v8) (unsigned short, signed char);
extern unsigned short v9 (unsigned char, unsigned char, unsigned short);
extern unsigned short (*v10) (unsigned char, unsigned char, unsigned short);
extern signed char v11 (signed short, signed int, signed int, signed short);
extern signed char (*v12) (signed short, signed int, signed int, signed short);
extern unsigned short v13 (unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned int);
extern void v15 (unsigned char, signed int, unsigned short);
extern void (*v16) (unsigned char, signed int, unsigned short);
extern unsigned char v17 (unsigned short, unsigned int, unsigned char, signed char);
extern unsigned char (*v18) (unsigned short, unsigned int, unsigned char, signed char);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern unsigned int v21 (unsigned int, unsigned char, unsigned char);
extern unsigned int (*v22) (unsigned int, unsigned char, unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (signed int);
extern signed int (*v26) (signed int);
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
extern signed int v29 (unsigned int, unsigned char, unsigned short, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v45 = 3U;
unsigned short v44 = 5;
unsigned int v43 = 6U;

unsigned short v1 (signed short v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = -4;
signed int v48 = 1;
unsigned char v47 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v50;
unsigned int v51;
unsigned char v52;
signed char v53;
unsigned char v54;
v50 = 5 + 0;
v51 = 1U + 0U;
v52 = v47 + v47;
v53 = -1 + -3;
v54 = v17 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 2: 
{
unsigned char v55;
unsigned char v56;
unsigned short v57;
unsigned short v58;
v55 = v47 + 6;
v56 = 2 - v47;
v57 = 7 + 1;
v58 = v9 (v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 4: 
{
signed int v59;
signed int v60;
v59 = -1 + v48;
v60 = v25 (v59);
history[history_index++] = (int)v60;
}
break;
case 6: 
{
unsigned char v61;
signed char v62;
v61 = 2 - v47;
v62 = v5 (v61);
history[history_index++] = (int)v62;
}
break;
case 8: 
{
unsigned char v63;
unsigned char v64;
unsigned short v65;
unsigned short v66;
v63 = v47 - 5;
v64 = v47 + v47;
v65 = 7 - 4;
v66 = v9 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}

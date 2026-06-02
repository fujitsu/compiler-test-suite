#include <stdlib.h>
void v1 (signed short, unsigned short, signed short, signed char);
void (*v2) (signed short, unsigned short, signed short, signed char) = v1;
extern void v3 (signed short, unsigned int, unsigned short, signed int);
extern void (*v4) (signed short, unsigned int, unsigned short, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int, unsigned int, unsigned int, unsigned char);
extern void (*v10) (signed int, unsigned int, unsigned int, unsigned char);
extern signed short v11 (unsigned int, unsigned char, signed short);
extern signed short (*v12) (unsigned int, unsigned char, signed short);
extern void v13 (unsigned int, signed int, signed int);
extern void (*v14) (unsigned int, signed int, signed int);
extern void v15 (unsigned char, signed short);
extern void (*v16) (unsigned char, signed short);
extern unsigned short v17 (unsigned int, signed int, unsigned short, signed char);
extern unsigned short (*v18) (unsigned int, signed int, unsigned short, signed char);
extern signed int v19 (signed short, unsigned int, signed int);
extern signed int (*v20) (signed short, unsigned int, signed int);
extern unsigned char v21 (unsigned char, unsigned int);
extern unsigned char (*v22) (unsigned char, unsigned int);
extern signed int v23 (signed short, unsigned short, signed int, unsigned int);
extern signed int (*v24) (signed short, unsigned short, signed int, unsigned int);
extern signed short v25 (signed short, unsigned char, signed int);
extern signed short (*v26) (signed short, unsigned char, signed int);
extern unsigned short v27 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v28) (unsigned int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v54 = 3;
signed short v53 = -1;
signed int v52 = -4;

void v1 (signed short v55, unsigned short v56, signed short v57, signed char v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 0U;
unsigned char v60 = 7;
unsigned char v59 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v62;
unsigned int v63;
unsigned short v64;
signed int v65;
v62 = v57 - v57;
v63 = v61 - v61;
v64 = 1 - v56;
v65 = -4 + -4;
v3 (v62, v63, v64, v65);
}
break;
case 2: 
{
signed int v66;
v66 = v7 ();
history[history_index++] = (int)v66;
}
break;
case 4: 
{
unsigned char v67;
unsigned int v68;
unsigned char v69;
v67 = 5 + v59;
v68 = 5U + v61;
v69 = v21 (v67, v68);
history[history_index++] = (int)v69;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

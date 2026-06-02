#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned char, signed short, unsigned short);
extern signed int (*v6) (unsigned char, signed short, unsigned short);
extern unsigned short v7 (signed short, unsigned char, signed int);
extern unsigned short (*v8) (signed short, unsigned char, signed int);
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed short v17 (unsigned int);
signed short (*v18) (unsigned int) = v17;
extern signed short v19 (signed short, unsigned char, unsigned short, signed short);
extern signed short (*v20) (signed short, unsigned char, unsigned short, signed short);
void v21 (signed short, unsigned int);
void (*v22) (signed short, unsigned int) = v21;
extern unsigned short v23 (unsigned short, unsigned short, signed short, signed short);
extern unsigned short (*v24) (unsigned short, unsigned short, signed short, signed short);
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
extern unsigned short v27 (signed short, unsigned int, unsigned short);
extern unsigned short (*v28) (signed short, unsigned int, unsigned short);
extern signed short v29 (unsigned char, signed char, unsigned int);
extern signed short (*v30) (unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v55 = 0;
unsigned short v54 = 3;
signed int v53 = -1;

void v21 (signed short v56, unsigned int v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = -1;
unsigned char v59 = 0;
signed char v58 = 2;
trace++;
switch (trace)
{
case 5: 
return;
case 7: 
{
signed short v61;
unsigned int v62;
unsigned short v63;
unsigned short v64;
v61 = 0 - 3;
v62 = v57 - 2U;
v63 = 5 + 6;
v64 = v27 (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 9: 
{
signed short v65;
unsigned int v66;
unsigned short v67;
unsigned short v68;
v65 = v56 - v56;
v66 = 5U - v57;
v67 = 4 + 1;
v68 = v27 (v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed short v17 (unsigned int v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -2;
signed int v71 = -2;
unsigned char v70 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

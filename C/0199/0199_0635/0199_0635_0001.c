#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern signed char v5 (signed char, unsigned int);
extern signed char (*v6) (signed char, unsigned int);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern unsigned int v9 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed short, unsigned char, unsigned char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
signed char v13 (signed short, signed int);
signed char (*v14) (signed short, signed int) = v13;
extern void v15 (unsigned char, signed int, signed int, signed char);
extern void (*v16) (unsigned char, signed int, signed int, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
void v23 (signed short);
void (*v24) (signed short) = v23;
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
extern unsigned int v29 (signed int, unsigned int, signed short, unsigned char);
extern unsigned int (*v30) (signed int, unsigned int, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v64 = 2U;
signed int v63 = 0;
unsigned short v62 = 6;

void v23 (signed short v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 3;
signed char v67 = 3;
signed char v66 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed short v69, signed int v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 6;
signed short v72 = 1;
unsigned int v71 = 0U;
trace++;
switch (trace)
{
case 3: 
{
signed int v74;
unsigned int v75;
signed short v76;
unsigned char v77;
unsigned int v78;
v74 = v70 + v70;
v75 = 5U - v71;
v76 = v72 + v72;
v77 = 2 - 3;
v78 = v29 (v74, v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 5: 
{
signed char v79;
unsigned short v80;
v79 = -4 - -4;
v80 = v25 (v79);
history[history_index++] = (int)v80;
}
break;
case 7: 
{
unsigned char v81;
signed int v82;
signed int v83;
signed char v84;
v81 = 3 - 3;
v82 = 2 + 0;
v83 = v70 - v70;
v84 = -2 + 1;
v15 (v81, v82, v83, v84);
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

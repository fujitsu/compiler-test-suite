#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
void v5 (signed short, signed int, unsigned int, unsigned int);
void (*v6) (signed short, signed int, unsigned int, unsigned int) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed int v17 (signed int, signed short);
extern signed int (*v18) (signed int, signed short);
extern signed short v19 (unsigned char, signed char);
extern signed short (*v20) (unsigned char, signed char);
extern unsigned char v21 (signed char, signed int, unsigned short, signed int);
extern unsigned char (*v22) (signed char, signed int, unsigned short, signed int);
extern void v23 (unsigned short, signed int, unsigned char, unsigned short);
extern void (*v24) (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed int, unsigned char, signed int, unsigned short);
extern unsigned short (*v30) (signed int, unsigned char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v68 = -1;
signed int v67 = -2;
signed char v66 = -3;

void v5 (signed short v69, signed int v70, unsigned int v71, unsigned int v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 4U;
signed int v74 = 1;
unsigned short v73 = 3;
trace++;
switch (trace)
{
case 4: 
{
signed char v76;
signed int v77;
unsigned short v78;
signed int v79;
unsigned char v80;
v76 = 0 + 3;
v77 = v70 + v74;
v78 = v73 - 1;
v79 = v74 - v70;
v80 = v21 (v76, v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 6: 
{
signed char v81;
signed int v82;
unsigned short v83;
signed int v84;
unsigned char v85;
v81 = 0 - 3;
v82 = -1 - v70;
v83 = v73 + 1;
v84 = -1 - v70;
v85 = v21 (v81, v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 8: 
return;
default: abort ();
}
}
}
}
